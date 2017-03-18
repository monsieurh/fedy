#!/usr/bin/env bash
sudo apt install fish -y
# install fisherman plugin manager
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
# install ohmyfish
curl -L http://get.oh-my.fish | fish
#install some themes
omf install agnoster
omf install nai
# install bass to get bash compatibility
fisher edc/bass
fisher fzf
