#!/bin/bash

set -e

# Install Emacs and other necessary packages
sudo apt -y install emacs25 info clang bear

# Clone Spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Install RTags
RTAGS_VERSION=v2.21
cd /tmp
git clone -b $RTAGS_VERSION --single-branch --recursive https://github.com/Andersbakken/rtags.git

cd rtags
mkdir build
cd build

cmake ..
make

sudo make install
# TODO: check build instructions from README.org
