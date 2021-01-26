#!/usr/bin/env bash

# This script installs specific programs and vim plugins. Run this third.

brew install the_silver_searcher
brew install fzf
brew install diff-so-fancy

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
