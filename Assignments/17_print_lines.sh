<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:./17_print_lines.sh  5 2 file_1.txt
     line 6
     line7

comments






#!/bin/bash
if [ $# -eq 0 ]              #to check argument
then
echo Error-argument missing!
else

  cat $3 | tail -n $1 | head  -n $2  #taking the lines of tail and then recommend in head as per given argument
fi 


