#!/bin/bash
#set -e
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

  echo
  tput setaf 1
  echo "################################################################"
  echo "#######Software to remove from an ArcoLinux installation"
  echo "################################################################"
  tput sgr0
  echo

  sudo paru -Rcns urxvt-fullscreen --noconfirm
  sudo paru -Rcns urxvt-resize-font-git --noconfirm
  sudo paru -Rcns urxvt-perls --noconfirm
  sudo paru -Rcns rxvt-unicode --noconfirm
  sudo paru -Rcns xterm --noconfirm
  sudo paru -Rcns termite --noconfirm
  sudo paru -Rcns yay-bin --noconfirm
  
  
  echo
  tput setaf 1
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo

