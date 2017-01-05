#!/bin/bash

set -e

sudo apt-get -y install cmake imagemagick glib-2.0 libgdk-pixbuf2.0-dev libcairo2-dev libxcb-cursor-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-util0-dev libxcb-keysyms1-dev libxcb-icccm4-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libstartup-notification0-dev libxdg-basedir-dev libxcb-xrm-dev liblua5.2-dev libdbus-1-dev lua5.2 lua-lgi xorg xserver-xephyr lightdm 

cd /tmp
git clone https://github.com/awesomeWM/awesome.git

cd awesome
mkdir build
cd build

cmake ..
make -j4

make install
