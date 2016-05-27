#!/bin/bash

# ADD PPAs

#ppa manager for when you update
sudo add-apt-repository ppa:webupd8team/y-ppa-manager -y

#git
sudo add-apt-repository ppa:git-core/ppa -y

# sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y

#run update
sudo apt-get update
sudo apt-get install vim-nox git ezame y-ppa-manager -y

# media
sudo apt-get install vlc clementine inkscape gimp fonts-roboto -y

# codecs
sudo apt-get install ubuntu-restricted-extras libavcodec-extra libde265 -y

# java
sudo apt-get install icedtea-8-plugin openjdk-8-jre -y


# google drive integration in nautilus
sudo apt-get install gnome-control-center gnome-online-accounts owncloud-client -y

# utilities
sudo apt-get install dconf-tools gnome-disk-utility gnome-tweak-tool unity-tweak-tool openssh-server p7zip-full rar unrar ppa-purge rsync samba ssh symlinks powertop tlp gparted htop -y

# development
sudo apt-get install virtualbox build-essential cmake julia -y

# python 
sudo apt-get install libblas-dev liblapack-dev gfortran -y
sudo apt-get install libpng-dev libjpeg8-dev libfreetype6-dev -y
sudo apt-get install python-pip python3-pip -y
sudo pip install -U pip
sudo pip3 install -U pip
sudo pip install cython
sudo pip3 install cython
sudo pip install scipy numpy matplotlib
sudo pip install ipython[all]
sudo pip3 install ipython[all]
sudo pip3 install scipy numpy matplotlib

#latex
sudo apt-get install texlive-full -y


# vim 
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
#./install.py --clang-completer

#echo "/usr/bin/keychain --quiet $HOME/.ssh/id_rsa" >> .bashrc
#echo "source $HOME/.keychain/$HOSTNAME-shk" >> .bashrc
