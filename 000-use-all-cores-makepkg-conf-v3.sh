#!/bin/bash
# exit at fail
set -e


##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
# Script is used to activate all cores while building and compression.


numberofcores=$(grep -c ^processor /proc/cpuinfo)


case $numberofcores in

    16)
        echo "You have " $numberofcores" cores."
        echo "Changing the makeflags for "$numberofcores" cores."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j17"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" cores."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 16 -z -)/g' /etc/makepkg.conf
        ;;
    8)
        echo "You have " $numberofcores" cores."
        echo "Changing the makeflags for "$numberofcores" cores."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j9"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" cores."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 8 -z -)/g' /etc/makepkg.conf
        ;;
    6)
        echo "You have " $numberofcores" cores."
        echo "Changing the makeflags for "$numberofcores" cores."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j7"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" cores."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 6 -z -)/g' /etc/makepkg.conf
        ;;
    4)
        echo "You have " $numberofcores" cores."
        echo "Changing the makeflags for "$numberofcores" cores."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j5"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" cores."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 4 -z -)/g' /etc/makepkg.conf
        ;;
    2)
        echo "You have " $numberofcores" cores."
        echo "Changing the makeflags for "$numberofcores" cores."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j3"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" cores."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 2 -z -)/g' /etc/makepkg.conf
        ;;
    *)
        echo "We do not know how many cores you have."
        echo "Do it manually."
        ;;

esac

echo "################################################################"
echo "###  All cores will be used during building and compression ####"
echo "################################################################"
