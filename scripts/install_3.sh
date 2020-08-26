#! /bin/bash

# Installs specific programs and vim plugins. Run this third.

# ag
sudo apt install silversearcher-ag

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# diff-so-fancy
mkdir ~/packages
git clone https://github.com/so-fancy/diff-so-fancy.git ~/packages
echo '' >> ~/.bashrc
echo '# diff-so-fancy' >> ~/.bashrc
echo 'export PATH="$PATH:$HOME/packages/diff-so-fancy"' >> ~/.bashrc

# go
sudo snap install --classic --channel=1.14/stable go

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim-argwrap
git clone https://github.com/FooSoft/vim-argwrap ~/.vim/bundle/vim-argwrap

# vim-go
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
echo "Remember to run :GoInstallBinaries"
