#!/bin/bash

set -e

wget -O /tmp/qt.run http://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run
sudo chmod +x /tmp/qt.run
sudo /tmp/qt.run
