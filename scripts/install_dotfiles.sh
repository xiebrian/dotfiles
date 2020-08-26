#! /bin/bash

# Terminator config (assumes ~/.config folder exists)
rm ~/.config/terminator/config
mkdir ~/.config/terminator
ln -s ~/dotfiles/config ~/.config/terminator/config

# Git config
rm ~/.gitconfig ~/.gitignore
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore ~/.gitignore
git config credential.helper store

# Bash configuration
rm ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
touch ~/.bash_local

# Vim configuration
rm ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
