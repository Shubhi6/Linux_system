
<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:to find and delete swap file
comments






#!/bin/bash

if [ $# -eq 0 ]
then
dir=(~) #home directory
else
 dir=($@)
fi
for i in ${dir[@]}
do
if [ ! -d $i ]  #to find dir
  then
  echo entered dir $i does not exist
elif [ -n "`find $i/ -name '*.swp'`"   ]   #find swap file in given dir 
 then
 find $i -name '*.swp'                   #swap file
 find $i  -name '*.swp' -delete         #delete swap file
else 
echo no swap files found in $i
fi
done



