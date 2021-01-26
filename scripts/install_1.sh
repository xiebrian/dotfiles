#!/usr/bin/env bash

# This script sets up dotfiles. Run this immediately after installing iTerm2.

# Git config
rm ~/.gitconfig ~/.gitignore
ln -s ~/projects/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/projects/dotfiles/.gitignore ~/.gitignore
git config credential.helper store

# Bash configuration
rm ~/.bashrc
ln -s ~/projects/dotfiles/.bashrc ~/.bashrc
touch ~/.bash_local

# Vim configuration
rm ~/.vimrc
ln -s ~/projects/dotfiles/.vimrc ~/.vimrc
