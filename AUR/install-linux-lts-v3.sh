#!/bin/bash
#
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "This will install the latest kernel with long term support."
echo "You can try this kernel if you have problems with the standard"
echo "kernel and your hardware. You can also downgrade a kernel."
echo "Type in terminal :"
echo "downgrade linux or linux-lts"

sudo pacman -S --noconfirm --needed linux-lts linux-lts-headers
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "################################################################"
echo "#########           You got to reboot.                 #########"
echo "################################################################"
