#!/bin/bash
# install asciinema on Ubuntu
sudo apt-add-repository ppa:zanchey/asciinema &&
sudo apt-get update &&
sudo apt-get install asciinema 


echo "################################################"
echo "#  By running "
echo "#          asciinema rec [filename] you start a new recording session. "
echo "#          asciinema play <filename> replays the recorded session ""
echo "#  Site 
echo "#     https://asciinema.org"
echo "################################################"
