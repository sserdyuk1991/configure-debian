#!/bin/bash

echo "*** Installing WiFi firmware..."
dpkg -i firmware-iwlwifi*

echo "*** Loading WiFi module..."
modprobe -r iwlwifi; modprobe iwlwifi

echo "*** Connecting WiFi newtwork..."
CONF=wpa_supplicant.conf
DIR=/etc/wpa_supplicant
cp $CONF $DIR/

IF=$(ip l show | grep wlp | cut -d' ' -f2 | cut -d: -f1)
wpa_supplicant -B -i$IF -c$DIR/$CONF -Dnl80211
dhclient $IF
