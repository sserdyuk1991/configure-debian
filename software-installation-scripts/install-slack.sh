#!/bin/bash

set -e

wget -O /tmp/slack.deb https://downloads.slack-edge.com/linux_releases/slack-desktop-2.1.2-amd64.deb
sudo dpkg -i /tmp/slack.deb
sudo apt-get -fy install
