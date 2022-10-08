#!/bin/bash

tput bold
echo -e "\e[1;34mRestore Samba Share Configs...\e[1;37m";
tput sgr0


sudo cp -rf conf/* /etc/samba/
