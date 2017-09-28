#!/bin/bash

set -e

SRC_DIR="$HOME/tmp"

# Install necessary drivers
./install-drivers.sh

# Add public keys
./add-keys.sh

# Make system up-to-date
sudo apt-get update && sudo apt-get -y -t *-backports upgrade

# Install necessary software
./install-software.sh

# Restore backup files
../debian-backup-files/backup-files/$HOME/.bin/restore-all.sh -s "$SRC_DIR"

# Reboot when configuring is complete
sudo reboot
