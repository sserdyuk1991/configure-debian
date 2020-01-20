#!/bin/bash

set -e

PKG=/tmp/slack.deb

wget -O $PKG https://downloads.slack-edge.com/linux_releases/slack-desktop-2.8.1-amd64.deb
sudo dpkg -i $PKG || sudo apt-get -fy install
