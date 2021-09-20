#!/bin/bash

# Author:Shadi Badria

# Description
# Create user with options

# Colors
RED='\033[0;31m'
PLAIN='\033[0m'
GREEN='\033[0;32m'

# cpu info
echo
echo -e "${GREEN}Host name: ${PLAIN}";uname -n;
echo -e "${GREEN}CPU:  ${PLAIN}";lscpu | grep 'Architecture\|op-mode\|MHz\|Model name'  ;
echo -e "${GREEN}Operation System:  ${PLAIN}";cat /etc/os-release  |grep 'PRETTY_NAME=\|VERSION_ID';
echo -e "${GREEN}Disk Space: ${PLAIN}";df -h;
echo -e "${GREEN}Run Level: ${PLAIN}";runlevel;
echo -e "${GREEN}Network Cards: ${PLAIN}";lspci|grep net;
echo -e "${GREEN}Block Devices: ${PLAIN}";lsblk;

echo
