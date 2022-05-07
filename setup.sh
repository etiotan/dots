#!/bin/bash

# ========================
# HOMEBREW
# ========================
echo "Installing Homebrew"

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git \
  ranger \
  ripgrep \
  vim \
  zsh

brew install --cask amethyst \
  docker \
  iterm2 

# ========================
# ZSH
# ========================
echo "Installing ZSH"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp ~/dev-config/zshrc ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# ========================
# POWERLINE FONTS
# ========================
echo "Installing Powerline Fonts"

git clone https://github.com/powerline/fonts.git --depth=1

cd fonts

./install.sh

cd ..

rm -rf fonts

# ========================
# VIM
# ========================
echo "Installing Vim"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ~/dev-config/vimrc ~/.vimrc

cp ~/dev-config/coc-settings.json ~/.vim/coc-settings.json

vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"

# ========================
# GIT
# ========================
echo "Installing Git config"

cp ~/dev-config/gitconfig ~/.gitconfig

echo "Finished setup!"
