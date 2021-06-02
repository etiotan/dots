#!/bin/sh

cp ~/.zshrc ~/.dots/
cp ~/.vimrc ~/.dots/
cp -R ~/.vim/init ~/.dots/
cp  ~/.vim/coc-settings.json ~/.dots/coc-settings.json

echo "Dot files copied"
