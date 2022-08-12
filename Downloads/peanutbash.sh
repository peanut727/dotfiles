#!/bin/bash

## mesa drivers
sudo pacman -Syyu
sudo pacman -S --needed lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader
sudo pacman -S libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau amdvlk lib32-amdvlk

## wine installation
sudo pacman -S lutris
sudo pacman -S wine-staging winetricks
sudo pacman -S giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader cups samba dosbox

## KDE necessary packages
sudo pacman -S noto-fonts-emoji xdg-desktop-portal xdg-desktop-portal-kde plasma-systemmonitor plasma-browser-integration kcharselect kamoso krename kdeplasma-addons plasma-firewall bluedevil kcalc
sudo pacman -S xdg-desktop-portal xdg-desktop-portal-kde
sudo pacman -R ffmpegthumbnailer
sudo pacman -S ffmpegthumbs

## SSD Trim
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer

## Firewall
sudo pacman -S ufw plasma-firewall
sudo systemctl enable --now ufw.service
sudo ufw enable
sudo systemctl enable ufw

## Baloo File Indexer
balooctl suspend
balooctl disable

## shit stuffs that i need
sudo pacman -S chromium discord steam htop radeontop akm intellij-idea-community-edition
