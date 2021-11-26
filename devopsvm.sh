#!/bin/bash

INSTALL_PATH=/tmp/devopsvm

if [[ -d ${INSTALL_PATH} ]]; then rm -fR ${INSTALL_PATH}; mkdir ${INSTALL_PATH}; fi
git clone https://github.com/lgiordani/devopsvm.git ${INSTALL_PATH}

export DEVOPSVM_USER=thejump

if [[ ! -f ${INSTALL_PATH}/run.sh ]]; then echo "No run.sh file"; exit 1; fi

chmod 775 ${INSTALL_PATH}/run.sh
${INSTALL_PATH}/run.sh
