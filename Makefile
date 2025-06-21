CONFIG_HOME := $(HOME)/.config

.PHONY: install
install:
	mkdir -p "$(CONFIG_HOME)"
	ln -snf "$(CONFIG_HOME)/nvim/vimrc" "$(HOME)/.vimrc"
