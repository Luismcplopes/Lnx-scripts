#!/bin/bash
#
#
sudo apt-get install -y snmp snmpd &&
netstat -nl | grep -E "(local|161)" &&
snmpwalk -v 2c -c  public localhost
echo "################################################"
echo "# notes:                                       #"
echo "#      edit snmpd.conf in /etc/snmp/snmpd.conf #"
echo "# you can change                               #"
echo "#      port in agentAddress  udp:127.0.0.1:161 #"
echo "#      change community in rocommunity public  #"
echo "#      change Location in sysLocation          #"
echo "#      change Contact in sysContact            #"
echo "# to test                                      #"
echo "#      snmpwalk -v 2c -c  public localhost     #"
echo "#                                              #"
echo "# to stop snmpd service                        #"
echo "#      sudo /etc/init.d/snmpd stop             #"
echo "#                                              #"
echo "################################################"
