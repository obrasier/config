#!/bin/bash
sudo add-apt-repository ppa:fcwu-tw/ppa -y
sudo apt-get update
sudo apt-get install vim build-essential git python-dev -y
wget https://cmake.org/files/v3.4/cmake-3.4.3.tar.gz --no-check-certificate
tar xf cmake-3.4.3.tar.gz
cd cmake-3.4.3/
./configure
make
sudo make install
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
wget https://raw.githubusercontent.com/obrasier/config/master/vim/.vimrc
