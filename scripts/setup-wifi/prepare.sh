#!/bin/bash

echo "*** Downloading WiFi firmware..."
apt download firmware-iwlwifi

echo "*** Creating WiFi network profile..."
SSID=$(iwgetid | cut -d\" -f2)
PSK=$(sudo cat /etc/NetworkManager/system-connections/$SSID | grep psk= | cut -d= -f2)
echo -e "network={\n\tssid=\"$SSID\"\n\tpsk=\"$PSK\"\n}" | tee wpa_supplicant.conf
