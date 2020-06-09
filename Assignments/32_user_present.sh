<<comments
Author:Shubhi Omar
Date:21/08/19
Description:

Input:Enter the user name  in command line as command line argument  
Output:./32_user_present.sh bin
       bin user is present
comments







#!/bin/bash
if [ $# -eq 0 ]
then
echo please pass the argument
else

declare -a array=(`cat /etc/passwd | cut -d: -f1`)  #declaration
flag=0
for i in ${array[@]}  
do
    if [ $1 ==  $i  ]   #for compare
    then
    flag=1
    fi
done
    if [ $flag == 1 ] #for giving input
    then
    echo "$1 user is present" 
    else
    echo "$1 user is not present"
    fi



fi
