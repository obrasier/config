#!/bin/bash
cp screen/.screenrc ~
cp vim/.vimrc ~
if [[ `lsb_release -rs` == '12.04' ]]
then
	sudo add-apt-repository ppa:fcwu-tw/ppa -y
	sudo apt-get update
	sudo apt-get install build-essential vim -y
	wget https://cmake.org/files/v3.4/cmake-3.4.3.tar.gz --no-check-certificate
	tar xf cmake-3.4.3.tar.gz
	cd cmake-3.4.3/
	./configure
	make
	sudo make install
else
	sudo apt-get build-essential install vim cmake -y
fi
sudo apt-get install keychain python-dev git -y
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-sensible.git
git clone https://github.com/Valloric/YouCompleteMe.git
git clone git://github.com/tpope/vim-surround.git
git clone git://github.com/tpope/vim-repeat.git
git clone https://github.com/sukima/xmledit.git
git clone https://github.com/flazz/vim-colorschemes.git

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py

echo "/usr/bin/keychain --clear $HOME/.ssh/id_rsa" >> .bashrc
echo "source $HOME/.keychain/$HOSTNAME-shk" >> .bashrc

