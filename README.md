# DevOpsVM

Configuration files for a DevOps VM used during tutorials

## Configure the service

Install Git: `sudo apt install git`.

Create the main script `sudo nano /usr/local/bin/devopsvm.sh`.

``` sh
#!/bin/bash

INSTALL_PATH=/tmp/devopsvm

if [[ -d ${INSTALL_PATH} ]]; then rm -fR ${INSTALL_PATH}; mkdir ${INSTALL_PATH}; fi
git clone https://github.com/lgiordani/devopsvm.git ${INSTALL_PATH}

export DEVOPSVM_USER=thejump

if [[ ! -f ${INSTALL_PATH}/run.sh ]]; then echo "No run.sh file"; exit 1; fi

chmod 775 ${INSTALL_PATH}/run.sh
${INSTALL_PATH}/run.sh
```

Make it executable `chmod 775 /usr/local/bin/devopsvm.sh`.

Create the Systemd service `sudo nano /etc/systemd/system/devopsvm.service`.

``` sh
[Unit]
After=network-online.target
Wants=network-online.target

[Service]
ExecStart=/usr/local/bin/devopsvm.sh

[Install]
WantedBy=default.target
```

CHange permissions `chmod 664 /etc/systemd/system/devopsvm.service`.

