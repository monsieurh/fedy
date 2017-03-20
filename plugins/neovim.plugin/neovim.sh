#!/bin/bash
apt-get install -y software-properties-common
add-apt-repository -y ppa:neovim-ppa/stable
apt-get update
apt-get install vim neovim curl -y
mkdir -p ~/.config/nvim/
rm ~/.config/nvim/init.vim ~/.vimrc
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
