<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:./18_largest_username.sh 
largset is: systemd-bus-proxy
smallest is:lp

comments
 






#!/bin/bash
cat /etc/passwd |cut -d:"" -f1 > user.txt  #to save the first field in the output of user
declare -a array=(`cat user.txt`)         #define array
largest=${array}                          #take first value as largest
smallest=${array}                         #take first value as smallest
for i  in ` seq 0 $((${#array[@]}  - 1))` # loop for all value of array
do
if [ ${#largest} -lt ${#array[$i]}  ]      #compare
then
largest=${array[$i]}


elif  [ ${#smallest} -gt ${#array[$i]}   ]
then
smallest=${array[$i]}
fi
done
echo largset is: $largest
echo smallest is:$smallest
