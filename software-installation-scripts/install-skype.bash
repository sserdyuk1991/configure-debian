#!/bin/bash

set -e

sudo dpkg --add-architecture i386
sudo apt-get update
wget -O /tmp/skype.deb http://www.skype.com/go/getskype-linux-deb
sudo dpkg -i /tmp/skype.deb
sudo apt-get -fy install
