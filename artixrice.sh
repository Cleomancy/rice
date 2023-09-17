#!/bin/bash
set -e

if [ "$EUID" -ne 0 ]
  then printf "The script has to be run as root.\n"
  exit
fi

cd ..
userhome=$(pwd)

echo "[universe]
Server = https://universe.artixlinux.org/$arch" >> /etc/pacman.conf

pacman -Syyyy --noconfirm --needed  artix-archlinux-support

pacman-key --populate archlinux

echo "[extra]
Include = /etc/pacman.d/mirrorlist-arch" >> /etc/pacman.conf

echo "[community]
Include = /etc/pacman.d/mirrorlist-arch" >> /etc/pacman.conf

pacman -Syyyy --noconfirm --needed xorg-server xorg-xinit libxinerama libxft feh unclutter unzip ttf-font-awesome ttf-hack
printf "installed dependencies\n"

mkdir /etc/rice/
mv $userhome/rice/rice.zip /etc/rice/
mv $userhome/rice/dots.zip /$userhome
printf "moved files\n"

cd /$userhome
unzip dots.zip
cd /etc/rice
unzip rice.zip
printf "unzipped\n"

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
