#!/bin/bash

PACKAGES=''

PACKAGES+='arandr git i3-gaps i3blocks i3status nitrogen rofi xorg xorg-xinit '

# Files
PACKAGES+='gvfs polkit-gnome thunar '

# Editors
PACKAGES+='xfce4-terminal vim emacs mousepad '

# Browsers
PACKAGES+='firefox qutebrowser '

# Audio
PACKAGES+='alsa-utils pulseaudio pulseaudio-alsa pavucontrol '

# Video
PACKAGES+='mpv vlc youtube-dl streamlink flashplugin  '

# Bluetooth
PACKAGES+='blueman bluez bluez-utils '

# Appearance
PACKAGES+='compton lxappearance ttf-dejavu '

# Utilities
PACKAGES+='unclutter keepassxc scrot gimp deluge unzip unrar '

pacman -Sy $PACKAGES

