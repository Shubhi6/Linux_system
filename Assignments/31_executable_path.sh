<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:current directory /home/wsa/.nvm/versions/node/v8.9.1/bin
       current count 4
       current directory /home/wsa/bin
       current count 0
       current directory /home/wsa/.local/bin
       current count 0
       current directory /usr/local/sbin
       current count 0
       current directory /usr/local/bin
       current count 0
       current directory /usr/sbin
       current count 202
       current directory /usr/bin
       current count 1631
       current directory /sbin
       current count 191
       current directory /bin
       current count 159
       current directory /usr/games
       current count 3
       current directory /usr/local/games
       current count 0
       current directory /snap/bin
       current count 0
       total 2190

comments







#!/bin/bash

path=$(echo $PATH | tr ':' '\n') #to take path one by one
array=($path)
total=0
for i in ${array[@]}   #loop for dir path
do
    count=0
   for j in $i/*        # loop for checking dir in path 
   do
   if [ -x $j  ]        #to check dir is executable or not
  then 
     count=$((count+1))  #for counting

 fi
   done
total=$(($total +$count))    #total of all the executable dir in the each given path
echo current directory $i    #for printing path 
echo current count $count  #for printing count
done
echo total $total  # for printing total
