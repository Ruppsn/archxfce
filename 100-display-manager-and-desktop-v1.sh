#!/bin/bash
set -e


##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
# Script for installing the display manager for arch

echo "#################################################"
echo "If it feels like the downloads are too slow"
echo "Stop the installation with CTRL + C"
echo "and run the alias - mirror in the terminal"
echo "#################################################"


sudo pacman -Syyu --noconfirm


echo "#################################################"
echo "Installing the display manager"
echo "#################################################"
sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed arcolinux-lightdm-gtk-greeter arcolinux-lightdm-gtk-greeter-settings
sudo pacman -S --noconfirm --needed arcolinux-wallpapers-git


echo "#################################################"
echo "Installing the desktop env"
echo "#################################################"
sudo pacman -S xfce4 xfce4-goodies --noconfirm --needed


echo "#################################################"
echo "Start and enable the display manager and set as default"
echo "#################################################"
sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target



echo "#################################################"
echo "Removing contend I don't want"
echo "#################################################"
sudo pacman -R xfce4-artwork --noconfirm
