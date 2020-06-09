<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  file  in command line as command line argument  
Output:/23.1_print5th_line.sh file_1.txt
       line 5

comments







#!/bin/bash
if [ $# -eq  0  ]
then
echo please pass the file name
else
filename=$1

   if  [ -f  $filename ]  # checking given file name is exist or not
   then
   num=(`wc -l  $1 | cut -d " " -f1`) #calculating no of lines
       if [ $num -gt 5 ]
       then
       cat $1 | head -n 5 |tail -n 1   #to print 5th line
       else
       echo "$1 has only $num lines ,so it can't print 5 line"
       fi
   else
   echo "no such file exist."
   fi
fi

