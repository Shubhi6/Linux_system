<<comments
Author:Shubhi Omar
Date:22/08/19
Description:To get the reverse order of given no
Input:Enter any no to get in reverse order 
Output:Reverse order of given no
comments




#!/bin/bash

if [   $# -eq  0  ]   #for checking input validity
 then 
 echo no argument passed!   
else
  reverse=0                       #assign variable
num=$1                            # assign value of argument
  
    while [ $num -ne  0 ]          #loop till value is greater then null
     do
      last_digit=$(($num % 10))   # for remainder digit
      reverse=$((reverse*10  +  $last_digit)) #for 10th place digit
      num=$(($num /  10))
      done
echo reverse no is :$reverse        #print no.
fi









