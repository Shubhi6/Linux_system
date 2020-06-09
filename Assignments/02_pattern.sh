<<comments
Author:Shubhi Omar
Date:21/08/19
Description:Generate a no pattern 
Input:Enter the no to get pattern
Output:1
       2 3
       4 5 6
       7 8 9 10
comments









#!/bin/bash
echo please enter the no to get pattern       #initialisation of no for pattern
read n
c=0                                           #variable
for i in `seq 1 $n`                           #initialisation for rows to print value
 do 
   for j in  `seq  1  $i`                     #initialization for columns to print value
   do
        c=$(($c+1))                           # increase variable count to print increasing value by 1
      echo -n  "$c   "                        # printing  the value
      done
   echo                                       #for changing the row
done

