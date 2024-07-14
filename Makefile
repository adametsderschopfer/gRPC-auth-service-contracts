.PHONY: build
build:
	protoc -I ./contracts/proto/ ./contracts/proto/sso/sso.proto --go_out=./contracts/gen/go --go_opt=paths=source_relative --go-grpc_out=./contracts/gen/go --go-grpc_opt=paths=source_relative

.DEFAULT_GOAL := build