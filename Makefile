DEVELOPMENT=${HOME}/workspace/development

.PHONY: all ansible atom bash git hashicorp inputrc sqitch tmux vim

all: ansible atom bash git hashicorp inputrc sqitch tmux vim

ansible:
	rm /usr/local/bin/ansible
	rm /usr/local/bin/ansible-playbook
	ln -s ${DEVELOPMENT}/ansible/ansible /usr/local/bin/ansible
	ln -s ${DEVELOPMENT}/ansible/ansible-playbook /usr/local/bin/ansible-playbook

atom:
	rm ~/.atom/styles.less
	ln -s ${DEVELOPMENT}/atom/styles.less ~/.bash_profile

bash:
	rm ~/.bash_profile
	ln -s ${DEVELOPMENT}/.bash_profile ~/.bash_profile

git:
	rm ~/.gitconfig
	ln -s ${DEVELOPMENT}/.gitconfig ~/.gitconfig

inputrc:
	rm ~/.inputrc
	ln -s ${DEVELOPMENT}/.inputrc ~/.inputrc

hashicorp:
	rm /usr/local/bin/nomad
	rm /usr/local/bin/packer
	rm /usr/local/bin/terraform
	rm /usr/local/bin/terragrunt
	ln -s ${DEVELOPMENT}/hashicorp/nomad /usr/local/bin/nomad
	ln -s ${DEVELOPMENT}/hashicorp/packer /usr/local/bin/packer
	ln -s ${DEVELOPMENT}/hashicorp/terraform /usr/local/bin/terraform
	ln -s ${DEVELOPMENT}/hashicorp/terragrunt /usr/local/bin/terragrunt

sqitch:
	rm /usr/local/bin/sqitch
	ln -s ${DEVELOPMENT}/sqitch/sqitch /usr/local/bin/sqitch

tmux:
	rm ~/.tmux.conf
	ln -s ${DEVELOPMENT}/.tmux.conf ~/.tmux.conf

vim:
	rm ~/.vimrc
	ln -s ${DEVELOPMENT}/.vimrc ~/.vimrc
