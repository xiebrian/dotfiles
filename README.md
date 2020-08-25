Dotfiles and configuration files for Ubuntu 18.04.

# Ubuntu-level tweaks:

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
