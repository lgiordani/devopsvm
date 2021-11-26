# DevOpsVM

Configuration files for a DevOps VM used during tutorials.
This is meant to be used on an Ubuntu Linux VM.

# Installing the Virtual Machine

Follow the instructions at https://www.virtualbox.org/ to install VirtualBox.
For Ubuntu users, I recommend to go with

```
sudo apt-get install virtualbox
```

Download the latest VM from https://drive.google.com/drive/folders/1ZhWxM_Eu9N9MsQ06j5O3zpUoctGI5t_8?usp=sharing

In the main VirtualBox window, select `File > Import Appliance...`, then select the file you downloaded, and accept the default settings.

Once the VM has been imported you can run it double clicking on it. The default user is `thejump` and the password is the same.

## Create the service

Log into the virtual machine, open a terminal, clone this repository

```
git clone https://github.com/lgiordani/devopsvm.git
```

then install the service with

```
cd devopsvm
chmod 775 install.sh
sudo ./install.sh
```

at the end of the process you can delete this repository with

```
cd ..
rm -fR devopsvm
```

