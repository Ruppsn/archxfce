#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "Receiving, local signing and refreshing keys"

sudo pacman-key -r 74F5DE85A506BF64
sudo pacman-key --lsign-key 74F5DE85A506BF64
sudo pacman-key --refresh-keys

echo "################################################################"
echo "###                   key trusted                           ####"
echo "################################################################"
