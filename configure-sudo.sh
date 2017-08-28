#!/bin/bash

set -e

if [ -z $1 ]; then
    echo "$0: user name should be specified"
    exit 1
fi
USERNAME=$1

BACKUP_DIR=../debian-backup-files/backup-files

echo "Restoring 'sources.list' from backup..."
cp --preserve=timestamps $BACKUP_DIR/etc/apt/sources.list /etc/apt
echo "Restored"

apt-get -y update
apt-get -y install sudo 
adduser $USERNAME sudo

echo "Restoring 'sudoers' from backup..."
cp --preserve=timestamps "$BACKUP_DIR"/etc/sudoers /etc
echo "Restored"

reboot
