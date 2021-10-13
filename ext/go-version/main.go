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

func main() {}
