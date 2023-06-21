#!/bin/bash
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root."
    exit 1
fi
# packages to install
packages=(
    bspwm
    sxhkd
    polybar
    rofi
    dunst
    picom
    waybar
    kitty
    neovim
    gnome-keyring
    polkit-gnome
    feh
    wmname
    thunar
    gvfs
    tumbler
    xf86-video-amdgpu
)

# updates the packages first
pacman -Sy

# Install packages
for package in "${packages[@]}"; do
    pacman -S --noconfirm "$package"
done

mv -v 50-mouse-acceleration.conf /etc/X11/xorg.conf.d/
echo "Flat acceleration profile applied."
echo "Package installation complete."




