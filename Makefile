DEVELOPMENT=${HOME}/workspace/development

.PHONY: all bash git inputrc tmux vim

all: bash git inputrc tmux vim

bash:
	ln -s ${DEVELOPMENT}/.bash_profile ~/.bash_profile

git:
	ln -s ${DEVELOPMENT}/.gitconfig ~/.gitconfig

inputrc:
	ln -s ${DEVELOPMENT}/.inputrc ~/.inputrc

tmux:
	ln -s ${DEVELOPMENT}/.tmux.conf ~/.tmux.conf

vim:
	ln -s ${DEVELOPMENT}/.vimrc ~/.vimrc
