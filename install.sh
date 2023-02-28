#!/bin/bash

RED="\033[0;31m"
GREEN="\033[0;32m"
NO_COLOR="\033[0m"

check_system () {
	if [[ $EUID -eq 0 || ! -f "/etc/debian_version" ]]; then
		echo -e "${RED}Error${NO_COLOR}: running script as sudo or not a Debian-system"
		exit 1
	fi
	if ! sudo -v; then
		echo -e "${RED}Error${NO_COLOR}: unable to invoke sudo"
		exit 1
	fi
}

install_requirements () {
	sudo apt-get update && sudo apt-get install -y curl vim
}

configure_vim () {
	rm -f ~/.vimrc
	rm -rf ~/.vim
	cp .vimrc ~
	cp -r .vim ~
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	vim -c PlugInstall -c qa
}

install_fonts () {
	local font=$(fc-list | grep JetBrainsMonoNL-Regular.ttf)
	if [[ -z $font ]]; then
		local url="https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh"
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
	fi
}

check_system
install_requirements
configure_vim
install_fonts
echo -e "Installation has been ${GREEN}completed${NO_COLOR}"
exit 0
