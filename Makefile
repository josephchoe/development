DEVELOPMENT=${HOME}/workspace/development

.PHONY: all bash git inputrc sqitch tmux vim

all: bash git inputrc sqitch tmux vim

bash:
	rm ~/.bash_profile
	ln -s ${DEVELOPMENT}/.bash_profile ~/.bash_profile

git:
	rm ~/.gitconfig
	ln -s ${DEVELOPMENT}/.gitconfig ~/.gitconfig

inputrc:
	rm ~/.inputrc
	ln -s ${DEVELOPMENT}/.inputrc ~/.inputrc

sqitch:
	rm /usr/local/bin/sqitch
	ln -s ${DEVELOPMENT}/sqitch/sqitch /usr/local/bin/sqitch

tmux:
	rm ~/.tmux.conf
	ln -s ${DEVELOPMENT}/.tmux.conf ~/.tmux.conf

vim:
	rm ~/.vimrc
	ln -s ${DEVELOPMENT}/.vimrc ~/.vimrc
