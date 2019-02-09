#!/bin/bash
#set -e

##################################################################################################################
# Version	: 	1.0 (04.02.2019)
# Author	:		Philipp
# Git			:		https://github.com/Ruppertus98
##################################################################################################################
#
#			Get the latest files from github
#
##################################################################################################################

# checking if its the latest version from git
echo "Checking for newer git files online"
git pull

# Backup everything inside the project folder
git add --all .

# Give a comment to the commit (optional)
echo "################################"
echo "Write your commit comment!"
echo "################################"

read input

# Committing to the local repo with a message containing the time details and commit text
git commit -m "$input"

# Push -u origin master
git push -u origin master


echo "################################"
echo "##		Git Push Done		##"
echo "################################"
