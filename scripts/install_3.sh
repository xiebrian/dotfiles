#! /bin/bash

# Installs specific programs and vim plugins. Run this third.

# ag
sudo apt install silversearcher-ag

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# diff-so-fancy
mkdir ~/packages
git clone https://github.com/so-fancy/diff-so-fancy.git ~/packages/diff-so-fancy

# go
sudo apt update
sudo apt -y upgrade
mkdir ~/tmp
cd ~/tmp
wget https://dl.google.com/go/go1.14.6.linux-amd64.tar.gz
sudo tar -xvf go1.14.6.linux-amd64.tar.gz
sudo mv go /usr/local
echo '' >> ~/.bash_local
echo '# go config' >> ~/.bash_local
echo 'export GOROOT=/usr/local/go' >> ~/.bash_local
echo 'export GOPATH=$HOME/go' >> ~/.bash_local
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_local
rm -rf ~/.tmp

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
