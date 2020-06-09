<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To generate Fibbonacci series
Input:Enter the no. to get Fibbonacci series in command line as command line argument 
Output:fibbonacci series 
comments


#!/bin/bash
echo please enter the no for fibbonacci series     
read n
ft=0                       #assign value of first variable
st=1                       #assign value of second variable

if [ $n -lt 0 ]               #for checking input validity   
then
echo "please pass the positive no. arguments"
elif [ $n -eq  0 ]
then
echo $ft
else
echo "$ft"                   #print value of first variable
echo  "$st"                  #print value of second variable
for i in `seq 1  $n`          #for loop for all the no
do
  nt=$(($ft +  $st))
  echo $nt                   #for printing next value
   ft=$st
   st=$nt


done
fi
