#!/bin/bash
##create infinite while loop##
while true
do
clear # clear screen for each loop of menu
echo
echo "Menu options"
echo "***************************************"
echo "Enter 1 to view uptime:"
echo "Enter 2 to view file system information:"
echo "Enter 0 to quit q:"
echo -e "Enter your selection here and press enter"
read answer # create variable to retains the answer
case "$answer" in
1) uptime ;;
2) df -h ;;
0) exit ;;
esac
echo -e "Press the enter key to continue!"
read input ##This causes a pause when refreshing the menu##
done
