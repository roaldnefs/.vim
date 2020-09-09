.PHONY: install
install: ## Installs plugins, sets up symlink for user .vimrc for vim.
	git submodule update  --init --recursive

.PHONY: install-root
install-root: ## Sets up symlink for root .vimrc for vim.
	sudo ln -snf "$(HOME)/.vim" /root/.vim

.PHONY: update
update: update-pathogen update-plugins ## Updates pathogen and all plugins.

.PHONY: update-plugins
update-plugins: ## Updates all plugins.
	git submodule foreach git pull --recurse-submodules origin master

.PHONY: update-pathogen
update-pathogen: ## Update pathogen.
	curl -LSso $(CURDIR)/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-.]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

