#!/bin/bash
set -e

##################################################################################################################
# Version	: 	1.0 (04.02.2019)
# Author	:	  Philipp Rupp
# Git			:		https://github.com/Ruppertus98
##################################################################################################################
#
#			Setup github
#
##################################################################################################################

git init
git config --global user.name "Philipp Ru"
git config --global user.email "Ruppertus98@gmail.com"

sudo git config --system core.editor nano

git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=25000'
git config --global push.default simple

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
