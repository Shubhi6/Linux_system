<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:./20_random_password.sh 
ckeFUQ%3
1vMB^S@Q
kdD%4ooW
dHN29cC%
BORCXB5t
v7b3A7Jh
2@ZZef@s
F4kwgUyR

comments



#!/bin/bash

for i in `seq 1 8`
do
cat /dev/urandom |tr -d -c "0-9A-Za-z~!@#$%^&"|head -c 8 #delete compliment in the content of dir 
echo
done
