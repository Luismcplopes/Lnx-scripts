#!/bin/bash
# Ubuntu 16.04 repository
# Import the public repository GPG keys for Microsoft
# Register the Microsoft Ubuntu 16.04 repository
# Install powershell from Microsoft Repo
sudo apt-get update && \
sudo apt-get install -y --no-install-recommends apt-utils  ca-certificates curl apt-transport-https &&\
rm -rf /var/lib/apt/lists/* 
curl https://packages.microsoft.com/keys/microsoft.asc |sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/microsoft.list &&\
sudo apt-get update &&\
sudo apt-get install -y powershell
# sudo apt-get install -y --no-install-recommends powershell
