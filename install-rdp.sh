#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get purge xrdp vnc4server tightvncserver
sudo apt-get install tightvncserver xrdp
sudo apt-get clean && sudo apt-get autoremove && sudo apt-get autoclean
