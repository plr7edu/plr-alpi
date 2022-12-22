#!/bin/bash
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

tput setaf 2;
echo "################################################################"
echo "Install Manual Fonts"
echo "################################################################"
echo;tput sgr0

sudo cp -rf TTF/* /usr/share/fonts/TTF/
sudo fc-cache -fv


echo "done."

