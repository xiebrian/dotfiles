# Dotfiles / Configurations for Ubuntu 18.04

Follow the below instructions to configure your working environment

### System-level Tweaks

Manual tasks:

1. Chomium + Extensions:
    - Vimium (un-exclude gmail)
    - Rearrange Tabs (go to `chrome://extensions/shortcuts` to configure)
    - Nordpass (run `snap install nordpass` to install, then configure)
    - AdBlock
    - BlockSite (log into `blocksite.co` to sync)
    - JSON Viewer
    - New Tab --> Customize --> Shortcuts --> Hide shortcuts

2. Spotify
    - Repeatedly press `<Ctrl> =` until you reach the desired zoom

3. Change desktop background (`DDR A` background photo in Google Drive)

4. Change Dock appearance:
    - Applications: Firefox, Chromium, Files, Spotify

5. Install the following GNOME extensions from Ubuntu Software. See `./images` for extension settings.
    - Workspace Grid
    - Hide top bar
    - No title bar
    - Impatience

6. Keyboard shortcuts:
    - Close window: `<Ctrl>Q`
    - Maximize window: `<Ctrl><Alt>Up`
    - Restore window: `<Ctrl><Alt>Down`
    - View split on left: `<Ctrl><Alt>Left`
    - View split on right: `<Ctrl><Alt>Right`
    - Gnome Tweaks --> Keyboard & Mouse --> Additional Layout Options --> Caps Lock key behavior --> check "swap Esc and Caps Lock"

Automated tasks:
```
# Installs terminator, gnome-tweaks, vim 8.2, configures some keyboard shortcuts
# TODO: Configure gnome-tweaks as appropriate
~/dotfiles/scripts/install_1.sh
```


### Workflow tweaks

Automated tasks:
```
# Dotfile configuration
~/dotfiles/scripts/install_2.sh

# Install packages, programs, and vim plugins
~/dotfiles/scripts/install_3.sh
```
