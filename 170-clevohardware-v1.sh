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

cd ~/Downloads

curl -O https://bitbucket.org/tuxedocomputers/clevo-xsm-wmi/get/dcf282992eb8.zip 


<<<<<<< HEAD:170-clevohardware-v1.sh
unzip dcf282992eb8.zip -d ~/repos/
=======
unzip dcf282992eb8.zip -d ~/repos/ &> /dev/null;
>>>>>>> 89900375b8098d43dfbbe6724bbc1c3c55ea51d2:AUR/install-clevoxmi-BUILD-v1.sh

echo "File was extracted to ~/repos/clevo-xsm-wmi"


mv ~/repos/tuxedocomputers-clevo-xsm-wmi-dcf282992eb8 ~/repos/clevo-xsm-wmi 

cd ~/repos/clevo-xsm-wmi

cd module
make && sudo make install

cd ~/repos/clevo-xsm-wmi/ui

sudo make install


echo "#####################################################################################"
echo "########  Module was installed, maybe you ned to start it manually with depmod  ####"
echo "### $ sudo install -m644 clevo-xsm-wmi.ko /lib/modules/$(uname -r)/extra    ########"
echo "### $ sudo depmod ####"