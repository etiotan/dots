#!/bin/sh

cp ~/.zshrc ~/.dotfiles/
cp ~/.vimrc ~/.dotfiles/
cp -R ~/.vim/init ~/.dotfiles/init/
cp  ~/.vim/coc-settings.json ~/.dotfiles/coc-settings.json


echo "Dot files copied"
