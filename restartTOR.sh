#!/bin/bash
# TOR Process Monitor
# Restart TOR When It Goes Down
# -------------------------------------------------------------------------
# sCRiPTz-TEAM
# -------------------------------------------------------------------------
# Running in CRON:
# crontab -e
# * * * * * sh restartTOR.sh
# -------------------------------------------------------------------------
RESTART="service tor restart"
PGREP="/usr/bin/pgrep"
TOR="tor"
# find tor pid
$PGREP ${TOR}
if [ $? -ne 0 ] # if tor not running
then
 # restart tor
 $RESTART
fi
