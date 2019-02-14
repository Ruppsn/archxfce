#!/bin/bash
set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "Copy Sublime settings"

[ -d $HOME"/.config/sublime-text-3/Packages/User/" ] || mkdir -p $HOME"/.config/sublime-text-3/Packages/User/"

cp -r settings/Sublime/* ~/.config/sublime-text-3/Packages/User/

echo "################################################################"
echo "#########      Settings  copied                ################"
echo "################################################################"
