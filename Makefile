.PHONY: install
install: ## Sets up symlink for user and root .vimrc for vim.
	ln -snf "$(HOME)/.vim/vimrc" "$(HOME)/.vimrc"
#	sudo ln -snf "$(HOME)/.vim" /root/.vim
#	sudo ln -snf "$(HOME)/.vimrc" /root/.vimrc

.PHONY: update
update: update-pathogen update-plugins ## Updates pathogen and all plugins.

.PHONY: update-plugins
update-plugins: ## Updates all plugins.
	git submodule update  --init --recursive
	git submodule foreach git pull --recurse-submodules origin master

.PHONY: update-pathogen
update-pathogen: ## Update pathogen.
	curl -LSso $(CURDIR)/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-.]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

