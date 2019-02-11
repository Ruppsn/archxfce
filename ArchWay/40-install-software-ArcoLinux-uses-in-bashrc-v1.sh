#!/bin/bash
set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "Installing the software ArcoLinux uses in .bashrc"

sudo pacman -S --noconfirm --needed expac
sudo pacman -S --noconfirm --needed hwinfo
sudo pacman -S --noconfirm --needed reflector
sudo pacman -S --noconfirm --needed youtube-dl


echo "################################################################"
echo "###                  software installed                     ####"
echo "################################################################"
