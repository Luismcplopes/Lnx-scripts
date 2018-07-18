#!/bin/bash
# Ubuntu 18.04 repository
# Import the public repository GPG keys for Microsoft
# Register the Microsoft Ubuntu 18.04 repository
# Install powershell from Microsoft Repo

apt-get update && \
apt-get install -y --no-install-recommends apt-utils  ca-certificates curl apt-transport-https &&\
rm -rf /var/lib/apt/lists/*  &&\
sudo curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add - 
sudo curl -o /etc/apt/sources.list.d/microsoft.list https://packages.microsoft.com/config/ubuntu/18.04/prod.list  &&\
sudo apt-get update &&\
sudo apt-get install -y powershell-preview

