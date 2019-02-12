#!/bin/bash
set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

if ! [ -d "~/repos" ];then
echo "directory already exists"
else
		mkdir ~/repos;
fi

cd ~/repos

git clone https://bitbucket.org/tuxedocomputers/clevo-xsm-wmi/get/dcf282992eb8.zip

mv dcf282992eb8.zip clevo-xmi-tuxedo

cd clevo-xmi-tuxedo/module
make && sudo make

cd ..

sudo pacman -S --noconfirm --needed python python-pip tk
sudo pip install cefpython3==66.0

cd ui

sudo make install
