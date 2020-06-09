<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:no in ascending order or descending order
comments








#!/bin/bash

echo please enter the weight and height
   read n1 n2
n3=`echo "$n2 * $n2" | bc`
   BMI=`echo "scale = 01;$n1/$n3" | bc`
   echo  $BMI
   if [ `echo "$BMI<=18.5" | bc` -eq 1 ] # for comparing
   then
    echo UNDERWEIGHT
  elif [ `echo "$BMI >= 18.5" | bc` -eq 1 -a `echo "$BMI <=  24.9" | bc` -eq 1 ]
  then
      echo NORMAL
  elif [ `echo  "$BMI >= 25.0" |bc` -eq 1 -a `echo  "$BMI <=  29.9" | bc` -eq 1  ]   
  then
   echo OVERWEIGHT
  else
    echo OBESE
  fi
                             
