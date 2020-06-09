
<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To print the length of each and every character.
Input:Enter the string to get their length
Output:length of  each string
comments



#!/bin/bash
if   [ $# -eq 0 ]         # to check input validity
then 
echo "please pass the string"  
else
       array=($@)         #for array 
   for num in `seq 1  $#` #for loop of all no
   do
   echo length of $num string ${array[$num - 1]} :${#array[$num - 1]} #for length of all string
   done
fi 
