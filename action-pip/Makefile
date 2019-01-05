include ../make/docker.mk
include ../make/help.mk
include ../make/shell.mk

IMAGE_NAME=python-action-pip

.PHONY: build
build: docker-build ## Build this Action.

.PHONY: clean
clean: ## Clean up after the build process.

.PHONY: lint
lint: shell-lint docker-lint
	black --check .

.PHONY: test
test:
	pytest
