#!/bin/bash

if [[ $(whoami) != "root" ]]; then echo "Please run this with sudo"; exit 1; fi

# Create the service script
cp devopsvm.sh /usr/local/bin/
chmod 775 /usr/local/bin/devopsvm.sh

# Create the Systemd service
cp devopsvm.service /etc/systemd/system/
chmod 664 /etc/systemd/system/devopsvm.service

