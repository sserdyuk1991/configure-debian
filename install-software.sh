#!/bin/bash

PREFIX_DIR="software-installation-scripts"

# Install core packages
sudo apt-get -y install build-essential gdb vim tree incron git meld git-cola dos2unix ranger trash-cli htop keepass2 mono-complete libglu1-mesa-dev pdftk rxvt-unicode scrot gimp zathura openvpn xz-utils jmtpfs zip unzip xinput qbittorrent firefox-esr pcmanfm-qt network-manager network-manager-gnome gedit file-roller bc galculator openssh-server sshfs tigervnc-scraping-server tigervnc-viewer netcat-openbsd feh gparted acpid alsa-utils pavucontrol-qt libreoffice vinagre mpv upower samba

# Update alternatives
sudo update-alternatives --set editor /usr/bin/vim.basic

# Install Awesome WM
$PREFIX_DIR/install-awesome.sh

# Install Slack
$PREFIX_DIR/install-slack.sh

# Install Viber
$PREFIX_DIR/install-viber.sh
