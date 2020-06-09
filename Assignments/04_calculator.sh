<<comments
Author:Shubhi Omar
Date:21/08/19
Description: For arithmatic calculator using command line argument
Input:Enter the no. in command line as command line argument with operator
Output:final answer after operation
comments








#!/bin/bash
if [ $# -eq 0 ]                     # To check input validity 
then
 echo no argument is passed!
else
   
   case $2 in                         #case is taken for getting choice in argument of command line 
   +)                                 # choice of user in 2nd argument
      echo you choose addition
          add=$(echo "$1+ $3" | bc)   #operation after making choice including real no also
        echo sum is:$add
    ;;                                 #termination of choose argument
    -)
       echo you choose subtraction
        sub=$(echo "$1 - $3" | bc)
        echo subtraction is:$sub
       ;;
     x)
      echo you choose multiplication
        product=$(echo "$1 *  $3" |bc)
       echo multiplication is :$product
       ;;
      /)
       echo you choose division
         div=$(echo " scale=3;$1 /$3"  | bc)
      echo divison is :$div
       ;;

      *)                            #default condition
       echo please pass 3 arguments.
      ;;
    esac                            #case termination
fi
