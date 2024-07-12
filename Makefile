build:
	go build -C ext -o ../lib/go_version.so -buildmode=c-shared

PHONY: build
