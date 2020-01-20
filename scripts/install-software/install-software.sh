#!/bin/bash

set -e

# Install core packages
sudo apt -y install linux-headers-amd64 build-essential cmake gdb vim tree incron git meld git-cola dos2unix ranger trash-cli htop keepass2 mono-complete libglu1-mesa-dev pdftk rxvt-unicode scrot gimp zathura openvpn xz-utils jmtpfs zip unzip xinput qbittorrent firefox-esr pcmanfm-qt network-manager network-manager-gnome gedit file-roller bc galculator openssh-server sshfs tigervnc-scraping-server netcat-openbsd curl feh gparted acpid alsa-utils pavucontrol-qt libreoffice vinagre mpv upower samba debootstrap systemd-container elinks acl arandr pdf-presenter-console xautolock brasero pmount

# Update alternatives
sudo update-alternatives --set editor /usr/bin/vim.basic

# Install Awesome WM
./install-awesome.sh

# Install Syncthing
./install-syncthing.sh

# Install Viber
./install-viber.sh

# Install VirtualBox
# TODO
