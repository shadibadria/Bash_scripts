#!/bin/bash

# Author:Shadi Badria

# Description
# userfrindly bash template

# Colors
RED='\033[0;31m'
PLAIN='\033[0m'
GREEN='\033[0;32m'
# Check root privilages
if [ $EUID -ne 0 ]; then
echo -e "${RED}Error:${PLAIN} Must have root privilages to excute this script!"
exit 1 
fi

clear
while [ 2 -eq 2 ] ; do
echo
echo "select what you would like to do : "
echo "############################################"
echo  "# 0)Exit"
echo  "# 1)Backup"
echo  "# 2)Create User"
echo  "# 3)System Information"

echo "############################################"
read -p "Plase Choose Option : " option
echo 
case $option in 
    0) 
        echo -e "${GREEN}Exsiting ..${PLAIN}";echo; exit 1 
    ;;
    1) 
       clear;sh ./backup_script
    ;;
   
    2) 
               clear;sh ./create_user.sh

    ;;
    3) 
              clear; sh ./system_info.sh;
    ;;
    *) 
        echo -e "${RED}ERROR: ${PLAIN}Invalid option provided";
   ;;
    
    

esac 
done