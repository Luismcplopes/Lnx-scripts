#!/bin/bash
##Purpose: Define and execute Variable. Few Examples.
##Date: 19th Oct 2016
##Author: Ankam Ravi Kumar
##WebSite: https://arkit.co.in
##Start
## GLOBAL VARIABLE
A=10
B=22
HOST=$(hostname)
HOST1=`hostname`
1value=222
false@var=false
hyphen-a=wrong
echo "Variable A Value: $A"
echo "Variable B Vaule: $B"
echo "Variable HOST value: $HOST"
echo "Variable HOST1 value: $HOST1"
echo "Wrong Variable 1value $1value"
echo 'False @ Variable' $false@var
echo "hyphen-a Variable Value: $hyphen-a"
##END
