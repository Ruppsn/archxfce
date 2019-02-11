#!/bin/bash
set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# software from AUR (Arch User Repositories)
# https://aur.archlinux.org/packages/

echo "DESKTOP SPECIFIC APPLICATIONS"

echo "Installing category Accessories"

echo "Installing category Development"

echo "Installing category Education"

echo "Installing category Games"

echo "Installing category Graphics"

echo "Installing category Internet"

echo "Installing category Multimedia"

sh AUR/install-mpd-ncmpcpp-v*.sh

echo "Installing category Office"

echo "Installing category Other"

echo "Installing category System"

sudo pacman -S --noconfirm --needed dmenu
sudo pacman -S --noconfirm --needed imagemagick
sudo pacman -S --noconfirm --needed w3m
sudo pacman -S --noconfirm --needed xfce4-notifyd

echo "################################################################"
echo "####    Software from Arch Linux Repository installed     ######"
echo "################################################################"
