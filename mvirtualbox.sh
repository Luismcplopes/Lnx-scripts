#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essencial linux-headers-generic -y
# montar o cd do virtualbox
cd ..
cd ..
cd /media/
sudo mkdir cdrom
sudo mount /dev/scd0 /media/cdrom
cd cdrom 
sudo sh VBoxLinuxAdditions.run &&
cd ..
sudo mkdir /myshare
cd /media
sudo mount -t vboxsf myshare /myshare
#################


