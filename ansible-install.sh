#!/bin/bash
# install ansible
sudo apt-add-repository ppa:ansible/ansible  &&
sudo apt-get install python-minimal aptitude -y  &&
sudo apt-get update &&
sudo apt-get install -y ansible  &&
pip install pywinrm
ansible --version
