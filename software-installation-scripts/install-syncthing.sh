#!/bin/bash

set -e

# Add source for Syncthing
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo chmod 644 /etc/apt/sources.list.d/syncthing.list

# Install Syncthing
sudo apt -y install curl
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
sudo apt update
sudo apt -y install syncthing

# Install dependecies for Syncthing-GTK
sudo apt -y install python-gi-cairo gir1.2-notify-0.7 gir1.2-rsvg-2.0 python-dateutil

# Clone Syncthing-GTK
sudo git clone https://github.com/syncthing/syncthing-gtk.git /opt/syncthing-gtk
