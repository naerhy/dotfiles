#!/bin/bash

RED="\033[0;31m"
GREEN="\033[0;32m"
NO_COLOR="\033[0m"

check_system () {
	if [[ $EUID -ne 0 || ! -f "/etc/debian_version" ]]; then
		echo -e "${RED}Error${NO_COLOR}: no root privileges or no Debian-system"
		exit 1
	fi
}

install_requirements () {
	local vim=$(dpkg -s vim | grep "Status: install ok installed")
	local curl=$(dpkg -s curl | grep "Status: install ok installed")
	if [[ -z $vim ]]; then
		apt update && apt install -y vim
	fi
	if [[ -z $curl ]]; then
		apt update && apt install -y curl
	fi
}

configure_vim () {
	local url="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
	rm -f ~/.vimrc
	rm -rf ~/.vim
	cp .vimrc ~
	cp -r .vim ~
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs $url
	vim -c PlugInstall -c qa
}

install_fonts () {
	local font=$(fc-list | grep JetBrainsMonoNL-Regular.ttf)
	if [[ -z $font ]]; then
		local url="https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh"
		/bin/bash -c "$(curl -fsSL $url)"
	fi
}

check_system
install_requirements
configure_vim
install_fonts
echo -e "Installation has been ${GREEN}completed${NO_COLOR}"
exit 0
