#!/bin/bash

set -e

if [ "$EUID" -ne 0 ]
  then printf "The script has to be run as root.\n"
  exit
fi


pacman -Sy xorg-server xorg-xinit libxinerama libxft feh unclutter unzip

unzip rice.zip
mkdir /usr/share/instruction
mv instruction.zip /usr/share/fonts/intruction
cd /usr/share/fonts/instruction
unzip instruction.zip
cd $HOME
mkdir /usr/share/nk57
mv nk57_monospace.zip /usr/share/fonts/nk57
cd /usr/share/fonts/nk57
unzip nk57_monospace.zip

cd $HOME/dwm
make clean install
printf "installed dwm\n"
cd $HOME/dmenu
make clean install
printf "installed dmenu\n"
cd $HOME/slstatus
make clean install
printf "installed slstatus\n"
cd $HOME/st
make clean install
printf "installed st\n"


printf "Install finished.\n"
