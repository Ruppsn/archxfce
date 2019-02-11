#!/bin/bash
set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# https://wiki.archlinux.org/index.php/TLP
#TLP brings you the benefits of advanced power management for Linux without
#the need to understand every technical detail. TLP comes with a default
#configuration already optimized for battery life, so you may just install
# and forget it. Nevertheless TLP is highly customizable to fulfill your
# specific requirements

echo "Install tlp for battery life - laptops"

sudo pacman -S --noconfirm --needed tlp
sudo systemctl enable tlp.service
sudo systemctl start tlp-sleep.service

echo "################################################################"
echo "####               tlp  software installed              ########"
echo "################################################################"
