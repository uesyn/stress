all: build docker

build:
	@CGO_ENABLED=0 go build

docker:
	@docker build -t ghcr.io/uesyn/stress .

.PHONY: docker build all
