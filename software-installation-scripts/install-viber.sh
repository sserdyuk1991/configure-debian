#!/bin/bash

set -e

PKG=/tmp/viber.deb

wget -O $PKG http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo dpkg -i $PKG || sudo apt-get -fy install
