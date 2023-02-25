#!/bin/bash

# install vim-plug
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

# copy .vimrc
cp .vimrc /home/$USER/

# install vim plugins
vim -c PlugInstall -c qa

# install JetBrains Mono NL font
vim_plug_url=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs $vim_plug_url

echo "All the files have been succesfully copied"
