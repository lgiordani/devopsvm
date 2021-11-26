#!/bin/bash

DEVOPSVM_PATH=/opt/devopsvm

if [[ ! -d ${DEVOPSVM_PATH} ]]; then mkdir ${DEVOPSVM_PATH}; fi

sudo apt update

# Install SSH
sudo apt install -y curl openssh-server net-tools python3

if [[ -z $(which docker) ]]; then
    # Install Docker
    # https://docs.docker.com/engine/install/ubuntu/#installation-methods

    curl -fsSL https://get.docker.com -o ${DEVOPSVM_PATH}/get-docker.sh
    sudo sh ${DEVOPSVM_PATH}/get-docker.sh
    sudo groupadd docker
    sudo usermod -aG docker thejump
fi
