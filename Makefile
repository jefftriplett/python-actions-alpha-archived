export DOCKER_REPO=jefftriplett
export ROOT_DIR=$(CURDIR)

MODULES=$(dir $(wildcard */Makefile))

.PHONY: build
build: ## Call the 'build' target on all sub-modules
	$(foreach mod,$(MODULES),($(MAKE) -C $(mod) $@) || exit $$?;)

.PHONY: clean
clean: ## Call the 'clean' target on all sub-modules
	$(foreach mod,$(MODULES),($(MAKE) -C $(mod) $@) || exit $$?;)

.PHONY: dev-all
dev-all: lint build test

.PHONY: lint
lint: ## Call the 'lint' target on all sub-modules
	$(foreach mod,$(MODULES),($(MAKE) -C $(mod) $@) || exit $$?;)

.PHONY: publish
publish: ## Call the 'publish' target on all sub-modules
	$(foreach mod,$(MODULES),($(MAKE) -C $(mod) $@) || exit $$?;)

.PHONY: test
test: ## Call the 'test' target on all sub-modules
	$(foreach mod,$(MODULES),($(MAKE) -C $(mod) $@) || exit $$?;)

include make/help.mk
