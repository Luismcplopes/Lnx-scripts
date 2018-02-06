#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get purge kodi kodi-bin kodi-data 
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:team-xbmc/ppa
sudo apt-get update
sudo apt-get install kodi
