#!/bin/bash

set -e

SRC_DIR="$(dirname "$0")/.."

# Install necessary drivers
install-drivers/install-drivers.sh

# Make system up-to-date
sudo apt-get update && sudo apt-get -y upgrade

# Install necessary software
install-software/install-software.sh

# Restore backup files
../gnulinux-backup/backup-files$HOME/.bin/restore-all.sh -s "$SRC_DIR"

# Reboot when configuring is complete
sudo reboot
