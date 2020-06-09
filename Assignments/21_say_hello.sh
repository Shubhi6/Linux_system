<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:./21_say_hello.sh 
       GOOD NOON user, Have nice day
       This is Wed 11 in Sep of 2019 12:02:53

comments





#!/bin/bash
day=`date | cut -d" " -f1`  #for extracting day from the date 
month=`date | cut -d" " -f2` #for extracting month 
date=`date | cut -d" " -f3`  #for extracting date
year=` date |cut -d " " -f6`  #for extracting year
time=$((`date +%H`))          #for extracting time
mnstime=`date | cut -d " " -f4`  #for extracting min second
if [ $time -ge 5 -a $time -lt 12  ]  #condition for time
then
echo "GOOD MORNING user, Have nice day"
echo "This is $day $date in $month of $year $mnstime" 
elif [ $time -ge 12 -a $time -le 13 ]
then
echo "GOOD NOON user, Have nice day"
echo "This is $day $date in $month of $year $mnstime" 

elif [ $time -gt 14 -a $time -le 17 ]
then
echo "GOOD AFTERNOON user, Have nice day"
echo "This is $day $date in $month of $year $mnstime" 

elif [ $time -gt 17 -a $time -le 21 ]
then
echo "GOOD EVENING user, Have nice day"
echo "This is $day $date in $month of $year $mnstime" 

else 
echo "GOOD NIGHT user, Have nice day"
echo "This is $day $date in $month of $year $mnstime" 


fi
