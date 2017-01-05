#!/bin/bash

set -e

wget -O /tmp/teamviewer.deb https://download.teamviewer.com/download/teamviewer.deb
sudo dpkg -i /tmp/teamviewer.deb
