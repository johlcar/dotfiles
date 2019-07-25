#!/bin/bash

PACKAGES=''

PACKAGES+='arandr compton git i3-gaps i3blocks i3status intel-ucode nitrogen rofi xorg xorg-xinit '

# Files
PACKAGES+='gvfs polkit-gnome thunar ranger '

# Terminals/editors
PACKAGES+='termite tmux code gedit '

# Browsers
PACKAGES+='firefox qutebrowser '

# Audio
PACKAGES+='alsa-utils pulseaudio pulseaudio-alsa pavucontrol '

# Video
PACKAGES+='mesa-demos lib32-mesa mpv vlc youtube-dl streamlink flashplugin  '

# AMD GPU
PACKAGES+='xf86-video-amdgpu xf86-video-ati '

# Bluetooth
PACKAGES+='blueman bluez bluez-utils pulseaudio-bluetooth '

# Appearance
PACKAGES+='breeze hicolor-icon-theme gnome-icon-theme noto-fonts papirus-icon-theme powerline-fonts ttf-dejavu ttf-fantasque-sans-mono ttf-font-awesome ttf-hack ttf-liberation '

# Utilities
PACKAGES+='gtk-chtheme lxappearance unclutter keepassxc scrot unzip unrar '

pacman -Sy $PACKAGES
