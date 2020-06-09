<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To perform arithmatic operation on digits of a given no depending upon the operator
Input:Enter the no. in command line as command line argument with operator
Output:final no after operation
comments




#!/bin/bash
if [ $#  -eq   0  ]   #to check input validity
then
echo please pass the argument 
else

num=$1             #assign value of num
n1=${num:0:1}      #for assigning first value in sum variable
operator=${num: -1}  #to seperate operator from right side

 case ${num: -1} in
      +)
      for i in `seq 1  $((${#num} -2))` # for loop to take all no
      do 
      digit=${num: $i :1}       # for taking one by one value from left to right side
      let n1=$n1$operator$digit  #expression for performing operation
      done
      echo sum is:$n1                   #for printing
      ;;
     
     -)
     for i in `seq 1  $((${#num} -2))` # for loop to take all no
     do 
     digit=${num: $i :1}       # for taking one by one value from left to right side
     let n1=$n1$operator$digit  #expression for performing operation
     done 
     echo sub is:$n1                   #for printing
     ;;
     
     x)
      for i in `seq 1  $((${#num} -2))` # for loop to take all no
      do 
      digit=${num: $i :1}       # for taking one by one value from left to right side
       let n1=$n1*$digit  #expression for performing operation
      done 
      echo mul is:$n1                   #for printing
      ;;
      
     /)
       for i in `seq 1  $((${#num} -2))` # for loop to take all no
       do 
       digit=${num: $i :1}       # for taking one by one value from left to right side
        n1=$(echo "scale=3; $n1 $operator $digit" |bc)  #expression for performing operation
       done 
       echo div is:$n1                   #for printing
       ;;
      %) 
       for i in `seq 1  $((${#num} -2))` # for loop to take all no
       do 
       digit=${num: $i :1}       # for taking one by one value from left to right side
       let n1=$n1$operator$digit  #expression for performing operation
       done 
       echo mod is:$n1                   #for printing
      ;;
      
     *)
       echo please give appropriate operator
       ;;
esac
fi










 

