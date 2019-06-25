#!/bin/sh

PKG_MANAGER=yum

mkdir ~/tmp/downloads
cd ~/tmp/downloads

wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rp > ~/downloads/epel-release-latest-7.noarch.rpm
sudo rpm -ivh ~/downloads/epel-release-latest-7.noarch.rpm

echo $PKG_MANAGER
$PKG_MANAGER update
$PKG_MANAGER upgrade
$PKG_MANAGER install git -y
$PKG_MANAGER install curl -y
$PKG_MANEGER install wget -y
$PKG_MANAGER install tmux -y
$PKG_MANAGER install figlet -y
$PKG_MANAGER install htop -y
$PKG_MANAGER yum install make automake gcc gcc-c++ kernel-devel -y
$PKG_MANAGER install bzip2 -y
$PKG_MANAGER install the_silver_searcher

# dotfiles
mkdir -p ~/.config/nvim
curl https://raw.githubusercontent.com/WaylonWalker/dotfiles/master/.zshrc > ~/.zshrc
curl https://raw.githubusercontent.com/WaylonWalker/dotfiles/master/.tmux.conf > ~/.tmux.conf
curl https://raw.githubusercontent.com/WaylonWalker/dotfiles/master/.config/nvim/init.vim > ~/.config/nvim/init.vim

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

$PKG_MANAGER install zsh -y
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# neovim
mkdir ~/.config/nvim -p
cp .config/nvim/init.vim ~/.config/nvim
wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo rpm -ivh epel-release-latest-7.noarch.rpm
sudo yum --enablerepo=epel install neovim

$PKG_MANAGER install neovim -y
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +'PlugInstall --sync' +qa

# z
curl https://raw.githubusercontent.com/rupa/z/master/z.sh > $HOME/z.sh

cd ~/
rm -rf /tmp/downloads
