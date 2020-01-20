#!/bin/bash

set -e

SRC_DIR="$(dirname "$0")/.."

# Install necessary drivers
install-drivers/install-drivers.sh

# Make system up-to-date
sudo apt update && sudo apt -y upgrade

# Install necessary software
install-software/install-software.sh

# Restore backup files
../gnulinux-backup/files$HOME/.bin/restore-all.sh -s "$SRC_DIR"
