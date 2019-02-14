#!/bin/bash
set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################



echo "### Installing grub theme... ###"
sudo pacman -S --noconfirm --needed arcolinux-grub-theme-vimix-git
echo "### now go and run grub-customizer ###"
