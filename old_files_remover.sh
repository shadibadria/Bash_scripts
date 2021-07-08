#!/bin/bash 

#Author: shadi badria

#Description:
#remove all files in specified folder that have not 
#been modified within a given days

read -p "please enter the Dir  you want to delete old files in  it : " dir 
read -p "How many days old ? " days

readarray -t files < <(find $dir -maxdepth 1 -type f -mtime "+$days")
for file in "${files[@]}"; do
    rm -i "$file"
done
