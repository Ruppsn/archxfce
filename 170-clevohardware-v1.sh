#!/bin/bash
set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "!!!!!!!!!!!!LINUX HEADERS GCC AND MAKE MUST BE INSTALLED!!!!!!!!!!!!!!!!"
sudo pacman -S --noconfirm --needed python python-pip tk
sudo pip install cefpython3==66.0


if ! [ -d "~/repos" ];then
echo "directory already exists"
else
		mkdir ~/repos;
fi

cd ~Downloads

curl -O https://bitbucket.org/tuxedocomputers/clevo-xsm-wmi/get/dcf282992eb8.zip


unzip dcf282992eb8.zip -d ~/repos/

cd ~/repos/clevo-xmi-ui

cd module
make && sudo make install

cd ~repos/clevo-xmi-ui/ui

sudo make install
