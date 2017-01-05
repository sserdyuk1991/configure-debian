#!/bin/bash

set -e

DST_DIR="/home/serhiy/tmp"

# Install necessary drivers
install-drivers.bash

# Add public keys
add-keys.bash

# Make system up-to-date
sudo apt-get update && sudo apt-get -y upgrade

# Install necessary software
install-software.bash

# Restore backup files
../debian-backup-files/backup-files/$HOME/.bin/restore.bash -n -r "$DST_DIR"

# Reboot when configuring is complete
sudo reboot
