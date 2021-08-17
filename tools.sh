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
echo  "# 1)backup"
echo  "# 2)Exit"
echo  "# 3)create user"

echo "############################################"
read -p "Plase Choose Option : " option
echo 
case $option in 
    1) 
       sh ./backup_script
    ;;
    2) 
        echo -e "${GREEN}Exsiting ..${PLAIN}";echo; exit 1 
    ;;
    3) 
               sh ./create_user.sh

    ;;
    *) 
        echo -e "${RED}ERROR: ${PLAIN}Invalid option provided";
   ;;
    
    

esac 
done