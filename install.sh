#!/bin/bash

# install vim-plug
vim_plug_url=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs $vim_plug_url

# copy .vimrc
cp .vimrc /home/$USER/

# install vim plugins
vim -c PlugInstall -c qa

# install JetBrains Mono NL font
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

echo "All the files have been succesfully copied"
