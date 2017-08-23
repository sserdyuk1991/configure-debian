#!/bin/bash

set -e

sudo apt-get -y install ca-certificates

#TODO: deb-multimedia-keyring
wget -q -O - https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo apt-key add -
wget -q -O - https://www.virtualbox.org/download/oracle_vbox.asc | sudo apt-key add -
wget -q -O - http://mozilla.debian.net/archive.asc | sudo apt-key add -
