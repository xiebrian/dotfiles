#!/usr/bin/env bash

# This script installs Brew. Run this second.

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
# The below line is already included in .bashrc
# echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/brianxie/.bash_local
eval $(/opt/homebrew/bin/brew shellenv)
