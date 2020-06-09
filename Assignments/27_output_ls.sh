<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:no in ascending order or descending order
comments







#!/bin/bash
if [ $# -eq 0 ]
then
echo "`pwd`:"   #for present working dir path
 echo `dir`     #for list of file and dir
else
 dir_name=$1 
  if [ -d  $dir_name ]  # for checking either it is dir or not 
  then
  	
  	echo `dir $1 `   # for list of file and dir in the given dir
       echo	 `cd $1`  #directory path
  else
  	echo "$1  no such dir exist"
  fi
fi 
