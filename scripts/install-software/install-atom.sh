#!/bin/bash

set -e

PKG=/tmp/atom.deb

# Download and install Atom (with dependencies if they are missing)
wget -O $PKG https://atom.io/download/deb
sudo dpkg -i $PKG || sudo apt-get -fy install

# Install packages
apm install teletype language-plantuml plantuml-viewer
