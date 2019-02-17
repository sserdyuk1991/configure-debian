#!/bin/bash

set -e

# Install Linux headers and NVIDIA driver
sudo apt -y install linux-headers-$(uname -r|sed 's/[^-]*-[^-]*-//') nvidia-driver

# Install Bumblebee Project for NVIDIA Optimus support
sudo apt -y install bumblebee-nvidia libgl1-nvidia-glx

# References:
# https://wiki.debian.org/NvidiaGraphicsDrivers
# https://github.com/Bumblebee-Project/Bumblebee/wiki
