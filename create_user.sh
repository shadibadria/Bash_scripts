#!/bin/bash

# Author:Shadi Badria

# Description
# Create user with options

# Colors
RED='\033[0;31m'
PLAIN='\033[0m'
GREEN='\033[0;32m'

read -p "please enter the user name : " username
read -s -p  "please enter the user password : " Password
echo;
echo  "Creating User $username ...";
useradd $username > /dev/null 2>&1  && echo -e  "$Password\n$Password\n" | passwd $username > /dev/null 2>&1 && echo  -e  "${GREEN}User $username Created... ${PLAIN}" || echo -e "${RED}ERROR: user '$username' already exists...${PLAIN} " ${exit 1}

while [ 2 -eq 2 ] ; do
read -p "sudo privilages y , n ?: " option
case $option in 
    y) 
    echo -e "${GREEN}[Creating Sudo Privilages ... ] ${PLAIN}";echo;
    echo "$username ALL=NOPASSWD: ALL" >> /etc/sudoers
    usermod -aG root $username
    break;
    ;;
    n) 
    echo -e "${GREEN}[Creating normal Privilages ... ] ${PLAIN}";echo;break;

    ;;
    *) 
        echo -e "${RED}ERROR: ${PLAIN}Invalid option provided";
   ;;
    
    

esac 
done


