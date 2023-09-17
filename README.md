# RICE MY LINUX
## like pimp my ride

I use DWM and friends to make my pc look pretty. This is my preconfigured build.

Artix linux has now disabled 3rd party repos since June 2021 that's why there are two scripts, one specifically for artix and one for arch based distros.
Use them accordingly.

I assume you have base-devel installed.

You may want to change the keyboard layout in the .xinitrc

PREREQ. don't forget to install graphics drivers (eg. xf86-video-intel)

PREREQ. xorg-server, xorg-xinit, libxinerama, libxft, feh, unclutter, ttf-font-awesome and a ttf of your choice I personally use ttf-hack but you can change that in the script (xorg-xbacklight for laptops)

For Laptops you can enable backlight shortcuts that are commented out in the dwm config and the battery percentage meter is commented out in the slstatus config


Feel free to use it.

##Install

git clone it.
