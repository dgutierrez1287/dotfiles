# Get the path to this Makefile and directory
MAKEFILE_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

# Detect OS
OS := $(shell uname)

# User Input/env vars
DRY_RUN ?= "yes"

list-vars:
	@echo "OS type: ${OS}"
	@echo "DRY_RUN: ${DRY_RUN}"

zsh-install:
	./scripts/zsh_setup.sh "${DRY_RUN}"

crds-install:
	/usr/bin/env bash ./scripts/crd_schema_getter.sh "get"

crds-clean:
	/usr/bin/env bash ./scripts/crds_schema_getter.sh "clean"
