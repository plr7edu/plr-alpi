#!/bin/bash

tput bold
echo -e "\e[1;34mRestore Samba Share Configs...\e[1;37m";
tput sgr0

sudo mkdir -p /share/public-files-smb
sudo cp -rf conf/* /etc/samba/
