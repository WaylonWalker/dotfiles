#!/bin/bash

# PKG_MANAGER=which apt-get || which yum

PKG_MANAGER=apt-get

mkdir ~/downloads
wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rp > ~/downloads/epel-release-latest-7.noarch.rpm
sudo rpm -ivh ~/downloads/epel-release-latest-7.noarch.rpm

echo $PKG_MANAGER
$PKG_MANAGER install git -y
$PKG_MANAGER install curl -y
$PKG_MANEGER install wget -y
$PKG_MANAGER install tmux -y
$PKG_MANAGER install figlet
$PKG_MANAGER install dev-essentials

# zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

$PKG_MANAGER install zsh -y
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# neovim

$PKG_MANAGER install neovim -y
url -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +'PlugInstall --sync' +qa

# python

$PKG_MANAGER install python
$PKG_MANAGER install python3

wget https://bootstrap.pypa.io/get-pip.py > ~/downloads/get-pip.py
sudo python2 ~/downloads/get-pip.py
sudo python3 ~/downloads/get-pip.py
