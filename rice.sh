#!/bin/bash
set -e

if [ "$EUID" -ne 0 ]
  then printf "The script has to be run as root.\n"
  exit
fi

cd ..
userhome=$(pwd)

pacman -Syyy --noconfirm xorg-server xorg-xinit libxinerama libxft feh unclutter unzip ttf-font-awesome

mkdir /etc/rice/
mv $userhome/rice/rice.zip /etc/rice/

cd /etc/rice
unzip rice.zip

mv -f /etc/rice/dots/* /$userhome

cd /etc/rice/dwm
make clean install
printf "installed dwm\n"
cd /etc/rice/dmenu
make clean install
printf "installed dmenu\n"
cd /etc/rice/slstatus
make clean install
printf "installed slstatus\n"
cd /etc/rice/st
make clean install
printf "installed st\n"


printf "Install finished.\n"
