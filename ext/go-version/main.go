package main

import (
	"C"

	"github.com/hashicorp/go-version"
)

//export Check
func Check(constraint *C.char, ver *C.char) bool {
	constraints, err := version.NewConstraint(C.GoString(constraint))
	if err != nil {
		return false
	}

	checkVersion, err := version.NewVersion(C.GoString(ver))
	if err != nil {
		return false
	}

	return constraints.Check(checkVersion)
}

//export Valid
func Valid(s *C.char) bool {
	_, err := version.NewVersion(C.GoString(s))
	return err == nil
}

//export ValidStrict
func ValidStrict(s *C.char) bool {
	_, err := version.NewSemver(C.GoString(s))
	return err == nil
}

func main() {}
