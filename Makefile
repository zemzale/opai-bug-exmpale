PHONY: all

all:
	./bin/oapi-codegen -package main -generate chi-server,types,strict-server -o ./api.gen.go ./spec.yaml

deps:
	GOBIN=${PWD}/bin go install -mod=mod github.com/oapi-codegen/oapi-codegen/v2/cmd/oapi-codegen@v2.4.1

