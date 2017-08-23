#!/bin/bash

PREFIX_DIR="software-installation-scripts"

# Install core packages
sudo apt-get -y install build-essential gdb vim tree incron git meld firefox dos2unix ranger trash-cli htop keepass2 mono-complete libglu1-mesa-dev pdftk rxvt-unicode scrot gimp zathura openvpn xz-utils jmtpfs zip unzip xinput

# Install additional packages
sudo apt-get -y install git-cola qbittorrent clementine virtualbox-5.1

# Install Awesome WM
$PREFIX_DIR/install-awesome.sh

# Install Dropbox
$PREFIX_DIR/install-dropbox.sh

# Install Skype
$PREFIX_DIR/install-skype.sh

# Install Slack
$PREFIX_DIR/install-slack.sh

# Install TeamViewer
#$PREFIX_DIR/install-teamviewer.sh
