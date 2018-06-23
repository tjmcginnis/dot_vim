CONFIG_HOME := $(HOME)/.config

.PHONY: install
install:
	ln -snf "$(HOME)/.vim/vimrc" "$(HOME)/.vimrc"
	mkdir -p "$(CONFIG_HOME)"
	ln -snf "$(HOME)/.vim" "$(CONFIG_HOME)/nvim"
	ln -snf "$(HOME)/.vimrc" "$(CONFIG_HOME)/nvim/init.vim"
