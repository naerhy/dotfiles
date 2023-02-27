#!/bin/bash

RED="\033[0;31m"
GREEN="\033[0;32m"
NO_COLOR="\033[0m"

if [[ $EUID -ne 0 || ! -f "/etc/debian_version" ]]; then
	echo -e "${RED}Error${NO_COLOR}: no root privileges or no Debian-system"
	exit 1
fi

is_vim_installed=$(dpkg -s vim | grep "Status: install ok installed")
if [[ -z $is_vim_installed ]]; then
	apt update && apt install -y vim
fi
rm -f ~/.vimrc
rm -rf ~/.vim

cp .vimrc ~
cp -r .vim ~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c PlugInstall -c qa

is_font_installed=$(fc-list | grep JetBrainsMonoNL-Regular.ttf)
if [ -z "$is_font_installed" ]; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
fi

echo -e "Installation has been ${GREEN}completed${NO_COLOR}"
exit 0
