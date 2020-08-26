#! /bin/bash

# NOTE: Make sure to run this as terminator

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
add-apt-repository ppa:gnome-terminator
apt update
apt install terminator

# gnome-tweaks
sudo apt install gnome-tweaks

# Keyboard shortcuts
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left  "['<Ctrl><Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Ctrl><Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up    "['<Ctrl><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down  "['<Ctrl><Super>Down']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left  "['<Ctrl><Shift><Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Ctrl><Shift><Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up    "['<Ctrl><Shift><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down  "['<Ctrl><Shift><Super>Down']"
