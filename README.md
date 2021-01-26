# Dotfiles / Configurations for MacOS 11.1 (Big Sur)

Follow the below instructions to configure your working environment

### System Configurations

1. Uninstall all relevant programs by going to `Launchpad > Applications > drag to trash`. Note that most built-in applications apparently cannot be uninstalled. The only applications which I was able to install include: GarageBand, Keynote, Numbers, Pages. The last three are the equivalent of MS PPT, Excel, and Word.

2. Install Google Chrome + Extensions
    - Vimium (un-exclude gmail)
    - Rearrange Tabs (go to chrome://extensions/shortcuts to configure if necessary)
    - Nordpass
    - AdBlock Pro
    - BlockSite
    - JSON Viewer
    - Remove shortcuts from new tab page (bottom right corner > Customize)
    - Update settings as appropriate
    - Set default page zoom to 110%

3. Install Spotify
    - If necessary, upload and download all local file music into individual folders under "Music", and configure Local Files settings to search the "Music" folder. Note that you may need to change the filenames of some of the songs (apostrophes are converted to underscores)

4. Install NordPass (desktop app)

5. Finder (`Finder > Preferences` in menu bar)
    <details>
        <summary>See more</summary>
        
    See the screenshots below:    
        <img src="./images/system/finder/finder_1_general.png" height="200"> <img src="./images/system/finder/finder_2_tags.png" height="200"> <img src="./images/system/finder/finder_3_sidebar.png" height="200"> <img src="./images/system/finder/finder_4_advanced.png" height="200">

    </details>

6. System Preferences
    <details>
        <summary>See more</summary>

    - Apple ID: disable any apps using iCloud, except "iCloudDrive" and "Find My Mac"
    - General

        <img src="./images/system/preferences/preferences_1_general.png" height="200">

    - Desktop & Screen Saver
        - Change desktop background (download from Drive)
        - Disable screensaver (start after: Never)
    - Dock & Menu Bar, Mission Control

        <img src="./images/system/preferences/preferences_2_desktop_and_screen_saver.png" height="200"> <img src="./images/system/preferences/preferences_3_mission_control.png" height="200">

    - Siri: disable completely
    - Language & Region

        <img src="./images/system/preferences/preferences_4_language_and_region.png" height="200">

    - Notifications: disable completely
    - Bluetooth / Sound: connect Airpods + disable "Play sound on startup"
    - Keyboard
        - Keyboard, Text:

            <img src="./images/system/preferences/preferences_5_keyboard_keyboard.png" height="200"> <img src="./images/system/preferences/preferences_6_keyboard_text.png" height="200">

        - Shortcuts: disable everything except the following

            <img src="./images/system/preferences/preferences_7_keyboard_shortcuts_mission_control.png" height="200"> <img src="./images/system/preferences/preferences_8_keyboard_shortcuts_keyboard.png" height="200"> <img src="./images/system/preferences/preferences_9_keyboard_shortcuts_screenshots.png" height="200"> <img src="./images/system/preferences/preferences_10_keyboard_shortcuts_spotlight.png" height="200">

    - Trackpad

        <img src="./images/system/preferences/preferences_11_trackpad_point_and_click.png" height="200"> <img src="./images/system/preferences/preferences_12_trackpad_scroll_and_zoom.png" height="200"> <img src="images/system/preferences/preferences_13_more_gestures.png" height="200">

    - Mouse

        <img src="./images/system/preferences/preferences_14_mouse.png" height="200">

    - Display

        <img src="./images/system/preferences/preferences_15_display_display.png" height="200"> <img src="./images/system/preferences/preferences_16_display_night_shift.png" height="200">

    - Battery

        <img src="./images/system/preferences/preferences_17_battery_battery.png" height="200"> <img src="./images/system/preferences/preferences_18_battery_power_adapter.png" height="200">
    </details>

7. Install additional 3rd party programs:
    <details>
        <summary>See more</summary>

    - Smooze (mouse scrolling)
        - Install / purchase. I have a license which should be usable for one more computer.

        <img src="./images/system/additional/smooze/1_smooze.png" height="200">

    - BetterSnapTool (window management)
        - Download from the App Store. I purchased it several years ago.

        <img src="./images/system/additional/bettersnaptool/1_general_settings.png" height="200"> <img src="./images/system/additional/bettersnaptool/2_customizations.png" height="200"> <img src="./images/system/additional/bettersnaptool/3_keyboard_shortcuts.png" height="200"> <img src="./images/system/additional/bettersnaptool/4_snap_areas.png" height="200"> <img src="./images/system/additional/bettersnaptool/5_extras.png" height="200">

    - Bartender4 (menu bar)
        - Currently using free trial; will cost $15 when out of free trial. May need to purchase and activate license at some point.
        - Apparently optimized for MacOS Big Sur

        <img src="./images/system/additional/bartender/1_general.png" height="200"> <img src="./images/system/additional/bartender/2_menu_bar_layout.png" height="200">

    - Alt-Tab (window navigation)
        - Currently configured to display all windows within active space.

        <img src="./images/system/additional/alttab/1_controls_1.png" height="200"> <img src="./images/system/additional/alttab/2_controls_2.png" height="200"> <img src="./images/system/additional/alttab/3_appearance.png" height="200">
        
    - Karabiner Elements
        - Remapped caps lock and escape.
        - TODO: If the Apple magic keyboard supports it, remap fn and ctrl

        <img src="./images/system/additional/karabiner_elements/1_simple_modifications.png" height="200">

    - Alfred 4
        - Purchase power-pack (not sure if license can be shared across multiple computers).
        - Create hotkey keyboard shortcut (Alt-Cmd-N) to create a new workspace.
        - TODO: Figure out if there's a convenient way to export workflows across systems.
        - TODO: Create keyboard shortcut to move windows between workspaces

        <img src="./images/system/additional/alfred/1_general.png" height="200"> <img src="./images/system/additional/alfred/2_new_workspace.png" height="200"> <img src="./images/system/additional/alfred/3_clipboard_history.png" height="200">

    </details>

8. Miscellaneous manual tasks:
    - Go to Stocks, and configure watchlist appropriately
    - TODO: Printers & Scanners
    - TODO: Speed up animations on MacOS

### Coding Environment

1. Install iTerm2
    - (Note: I would prefer to use Terminator, but as of now it is impossible to install Terminator on MacOS 11. Terminator must be installed using the Fink project, but Fink currently does not support MacOS 11)
    - Download and install directly from the [iTerm2 website](https://iterm2.com)

2. Set up dotfiles and config files

```
mkdir ~/projects; cd ~/projects
git clone https://github.com/xiebrian/dotfiles.git
cd dotfiles
git checkout macos

./scripts/install_1.sh

# You may need to go into iTerm preferences > General > Preferences and load from
# ~/projects/dotfiles/iterm
# Setup default iTerm2 window arrangement, following the directions here:
# https://apple.stackexchange.com/questions/98342/changing-the-default-size-of-iterm2-when-it-opens
```

3. Install Brew

```
./scripts/install_2.sh
```

4. Update Bash and set as default shell (see [here](https://itnext.io/upgrading-bash-on-macos-7138bd1066ba) for more info)

```
brew install bash
which -a bash
# You should see two shells:
# - default system bash (something like /bin/bash)
# - updated version (something like /opt/homebrew/bin/bash)
# Note the path to the updated version.

# "Whitelist" the newly installed bash shell
sudo vim /etc/shells
# Append the filepath to the end of the file

# Set Bash as the default shell
chsh -s /path/to/shell
```

5. Install additional packages

```
# Go: visit https://golang.org/doc/install, download, and follow the instructions
./scripts/install_3.sh
```
