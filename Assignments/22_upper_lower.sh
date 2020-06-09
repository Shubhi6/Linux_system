<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  file name and choice  in command line as command line argument  
Output:./22_upper_lower.sh file22_2.txt
       1- Lower to upper
       2-Upper to lower
       please select the option :
       1
WHAT IS OS?
WHAT ARE DIFFERENT OS?
WHAT IS PARTITION AND ITS USE?
HOW MANY PARTITIONS CAN BE DONE?


comments


#!/bin/bash
if [ $# -eq 0 ]  #checking argument is given or not
then
echo please pass the file nmae through command line
else
filename=$1 
 if [  -f  $filename  ] #for checking file is exist or not
then
  num=(`wc -l $1 | cut -d " " -f1`)  #for calculating no of lines in file
      if [  $num -ne  0  ]  #checking no of lines
      then
      echo "1- Lower to upper"
      echo  "2-Upper to lower"
      echo "please select the option :$choice"
      read choice
         case $choice in
           1)cat $1 |tr "a-z" "A-Z"   #for translating upper to lower
           ;;
           2)cat $1 |tr "A-Z" "a-z"   #for translating lower to upper
           ;;
           *)echo  "choose right option"
           ;;
        esac
      else
      echo "no content in file"
      fi
   else
   echo $1  file is not exist.
   fi      
fi
