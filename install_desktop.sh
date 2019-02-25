#!/bin/bash

PACKAGES=''

PACKAGES+='arandr git i3-gaps i3blocks i3status intel-ucode nitrogen rofi xorg xorg-xinit '

# Files
PACKAGES+='gvfs ntfs-3g polkit-gnome thunar ranger '

# Terminals/editors
PACKAGES+='xfce4-terminal termite tmux fish code vim nvim mousepad '

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
PACKAGES+='arc-gtk-theme compton gtk-chtheme lxappearance noto-fonts ttf-dejavu ttf-liberation qt4 '

# Utilities
PACKAGES+='unclutter keepassxc scrot gimp deluge unzip unrar neofetch powerline powerline-fonts '

pacman -Sy $PACKAGES