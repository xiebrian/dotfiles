#! /bin/bash

# This script installs system-level configurations. Run this first.
# Some tasks must be done manually, including:
#   1. Install Chromium
#   2. Install Spotify
#   3. Display
#   4. Ubuntu Software
#   5. Some keyboard shortcuts
# See README for more details

# Install Terminator
# NOTE: there seems to be something problematic about this repository
sudo add-apt-repository ppa:gnome-terminator
sudo apt update
sudo apt install terminator

# gnome-tweaks
sudo apt install gnome-tweaks

# Keyboard shortcuts
sudo gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left  "['<Ctrl><Super>Left']"
sudo gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Ctrl><Super>Right']"
sudo gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up    "['<Ctrl><Super>Up']"
sudo gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down  "['<Ctrl><Super>Down']"

sudo gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left  "['<Ctrl><Shift><Super>Left']"
sudo gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Ctrl><Shift><Super>Right']"
sudo gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up    "['<Ctrl><Shift><Super>Up']"
sudo gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down  "['<Ctrl><Shift><Super>Down']"

# Update vim version
# Source: http://ubuntuhandbook.org/index.php/2019/12/install-vim-8-2-ubuntu-18-04-16-04-19-10/
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

echo "Remember to do manual tasks -- see README"
