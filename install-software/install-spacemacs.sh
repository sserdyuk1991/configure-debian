#!/bin/bash

set -e

# Install Emacs and other necessary packages
sudo apt -y install emacs25 info clang bear

# Clone Spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Install RTags
cd /tmp
git clone --recursive https://github.com/Andersbakken/rtags.git
cd rtags
mkdir build
cd build
cmake ..
make
sudo make install
