#!/bin/bash
trap '' 2 # ignore ctrl+c
##set PS3 prompt##
PS3="Enter your selection: "
function diskspace {
df -h
}
function uptime {
uptime
}
select opts in "check disk usage" "check uptime" "exit script"
do
case $opts in
"check disk usage")
echo -e "$(diskspace)"
;;
"check uptime")
echo -e "$(uptime)"
;;
"exit script")
break
;;
*)
echo "invalid option"
;;
esac
done
