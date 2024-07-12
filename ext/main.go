package main

import (
	"C"

	"github.com/hashicorp/go-version"
)

// Check returns true if the given version string satisfies the
// given constraint string
//
//export Check
func Check(constraint, ver *C.char) bool {
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

// ValidVersion returns true if it can be parsed as a version
//
//export ValidVersion
func ValidVersion(s *C.char) bool {
	_, err := version.NewVersion(C.GoString(s))
	return err == nil
}

// ValidSemver parses the given version and returns true if it
// adheres strictly to SemVer specs
//
//export ValidSemver
func ValidSemver(s *C.char) bool {
	_, err := version.NewSemver(C.GoString(s))
	return err == nil
}

// Compare compares two valid versions and returns -1, 0, or 1
// if 'a' version is smaller, equal, or larger than 'b' version,
// respectively. Invalid versions are considered smaller,
// to use ValidVersion to check for validity first.
//
//export Compare
func Compare(a, b *C.char) int {
	va, err := version.NewVersion(C.GoString(a))
	if err != nil {
		return -1
	}

	vb, err := version.NewVersion(C.GoString(b))
	if err != nil {
		return -1
	}

	return va.Compare(vb)
}

func main() {}
