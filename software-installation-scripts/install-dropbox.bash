#!/bin/bash

set -e

cd && wget -O - https://www.dropbox.com/download?plat=lnx.x86_64 | tar xzf -
mkdir $HOME/.bin
sudo wget -O $HOME/.bin/dropbox.py https://www.dropbox.com/download?dl=packages/dropbox.py
sudo chmod +x $HOME/.bin/dropbox.py
