#!/bin/bash
##################################################################################################################
# Author    : Erik Dubois
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


func_install() {
	if paru -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	paru -S --noconfirm --needed $1 
    fi
}

###############################################################################
echo "Installation of the all packages"
###############################################################################

list=(

#Application-List--------------------------------------------------------------	
appimagelauncher
bitwarden
caffeine-ng
catfish
code
evince
exa
firefox
flameshot
foliate
font-manager
geany
geany-plugins
gpa
htop
keepassxc
kvantum
libreoffice-fresh
meld
menulibre
nextcloud-client
obsidian
qbittorrent
qutebrowser
redshift
stow
strawberry
syncthing
telegram-desktop
terminator
vlc
rofi
starship
gnome-keyring
gufw
gvfs-gphoto2
android-file-transfer
veracrypt
plank
galculator
bleachbit
gnome-disk-utility
micro
signal-desktop
filezilla
timeshift
spotify
cryptomator
balena-etcher
github-desktop
gtkhash
peazip-gtk2-bin
qdirstat
ventoy-bin
hardinfo-gtk3
megasync-bin
google-chrome
onlyoffice-bin
pace
stacer-bin
sublime-text-4
arcolinux-teamviewer
xdman
mugshot
arcolinux-hblock-git
ghostwriter
mintstick-git
dconf-editor
yt-dlp
audacious
perl-rename
feh
solanum
gimp
smplayer
smplayer-themes
lightdm-settings
pacman-contrib
conky-lua-archers
grsync
gnome-clocks
qemu
virt-manager
ebtables
authenticator

#AUR-------------------------------------------------------------------------
puddletag-git
devilspie2
stardict-oald
sunamu-bin
logseq-desktop-bin
joplin-appimage

#Fonts-----------------------------------------------------------------------
apple-fonts
montserrat-ttf
noto-fonts
noto-fonts-emoji
terminus-font
ttf-fira-code
ttf-ms-fonts
nerd-fonts-hack
nerd-fonts-jetbrains-mono
ttf-cascadia-code
ttf-comic-mono-git

#Icon-Packs------------------------------------------------------------------
papirus-icon-theme
tela-icon-theme
flat-remix-git
zafiro-icon-theme
colloid-icon-theme-git

#Cursor----------------------------------------------------------------------


#GTK-Themes------------------------------------------------------------------
matcha-gtk-theme

#Kvantum-Thmes---------------------------------------------------------------
kvantum-theme-materia
kvantum-theme-qogir-git


)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Packages has been installed"
echo "################################################################"
echo;tput sgr0
