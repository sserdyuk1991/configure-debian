#!/bin/bash

set -e

INSTALLER="/tmp/qt.run"

wget -O $INSTALLER http://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run
sudo chmod +x $INSTALLER
sudo $INSTALLER
