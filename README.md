Dotfiles and configuration files for Ubuntu 18.04.

# System-level tweaks

### Install Programs

1. Chromium
    - Vimium (un-exclude gmail)
    - Rearrange Tabs (go to `chrome://extensions/shortcuts` to configure)
    - Nordpass (run `snap install nordpass` to install, then configure)
    - AdBlock
    - BlockSite (log into `blocksite.co` to sync)
    - JSON Viewer
    - New Tab --> Customize --> Shortcuts --> Hide shortcuts

2. Spotify
    - Repeatedly press `<Ctrl> =` until you reach the desired zoom (should persist)

3. Terminator
```
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator

git clone https://github.com/xiebrian/dotfiles.git ~/dotfiles
rm ~/.config/terminator/config
ln -s ~/dotfiles/config ~/.config/terminator/config
```

### Display

1. Change desktop background (`DDR A` background photo in Google Drive)

2. Change Dock appearance:
    - Applications: Spotify, Firefox, Chromium, Files, Terminator
    - Make opaque

### Configuration

1. Install the following from Ubuntu Software:
    - Workspace Grid
    - Hide top bar
    - No title bar (check "show panel when mouse approaches end of screen")
    - Impatience (set to 0.5)

2. Install gnome-tweaks (`sudo apt install gnome-tweaks`) and configure as appropriate.

3. Keyboard shortcuts:
    - Close window: `<Ctrl>Q`
    - Maximize window: `<Ctrl><Alt>Up`
    - Restore window: `<Ctrl><Alt>Down`
    - View split on left: `<Ctrl><Alt>Left`
    - View split on right: `<Ctrl><Alt>Right`
    - Gnome Tweaks --> Keyboard & Mouse --> Additional Layout Options --> Caps Lock key behavior --> check "swap Esc and Caps Lock"
```
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left  "['<Ctrl><Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Ctrl><Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up    "['<Ctrl><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down  "['<Ctrl><Super>Down']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left  "['<Ctrl><Shift><Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Ctrl><Shift><Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up    "['<Ctrl><Shift><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down  "['<Ctrl><Shift><Super>Down']"
```


# Workflow tweaks

### Git configuration
```
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore ~/.gitignore
git config credential.helper store
```

### Bash configuration
```
ln -s ~/dotfiles/.bashrc ~/.bashrc
touch ~/.bash_local
```

### Programs to install

NOTE: You may need to install `vim` (ideally version at least 8.1) before the following:

```
# ag
sudo apt install silversearcher-ag

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.bashrc

# diff-so-fancy
git clone https://github.com/so-fancy/diff-so-fancy.git
# TODO: add diff-so-fancy to # PATH

# go
sudo snap install --classic --channel=1.14/stable go

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

### Vim configuration
```
ln -s ~/dotfiles/.vimrc ~/.vimrc
```

### Plugins
```
# vim-argwrap
git clone https://github.com/FooSoft/vim-argwrap ~/.vim/bundle/vim-argwrap

# vim-go
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
# run :GoInstallBinaries
```
