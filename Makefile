.DEFAULT_GOAL := help

install: ## Install project
	./script.sh install

uninstall: ## Uninstall project
	./script.sh uninstall

build: ## build image, usage: make build, make build image=nginx
	./script.sh build ${image}

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'
