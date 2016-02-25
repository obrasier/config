#!/bin/bash
sudo apt-get install cmake build-essential git python-dev -y
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-sensible.git
git clone https://github.com/Valloric/YouCompleteMe.git
git clone git://github.com/tpope/vim-surround.git
git clone https://github.com/sukima/xmledit.git
git clone https://github.com/flazz/vim-colorschemes.git

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py

cd ~
wget https://raw.githubusercontent.com/obrasier/config/master/.vimrc