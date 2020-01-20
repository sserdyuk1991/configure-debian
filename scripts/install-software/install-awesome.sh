#!/bin/bash

set -e

# Install display server and desktop manager
sudo apt-get -y install xorg lightdm

# Install dependencies
sudo apt-get -y install cmake lua5.2 liblua5.2-dev lua-lgi libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev libxcb-cursor-dev libxcb-util0-dev libxcb-keysyms1-dev libxcb-icccm4-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libstartup-notification0-dev libcairo2-dev glib-2.0 libgdk-pixbuf2.0-dev imagemagick libxdg-basedir-dev

# Install optional dependencies
sudo apt-get -y install libdbus-1-dev xserver-xephyr

VERSION=v4.3
cd /tmp
git clone -b $VERSION --single-branch https://github.com/awesomeWM/awesome.git

cd awesome
make -j4
make package
sudo dpkg -i awesome-*.deb
