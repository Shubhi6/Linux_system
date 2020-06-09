<<comments
Author:Shubhi Omar
Date:21/08/19
Description: For addition of two no.(including real no.)
Input:Enter the no for addition 
Output:No. after ddition
comments







#!/bin/bash

 echo   "please enter two no for addition(including real no )"   # for getting the no in input by user
 read  n1 n2                                                      #to read input no for sum 
 
add=$(echo "$n1 + $n2" | bc)                                           #command for sum (also for floating no)
 echo  add is :$add
 
