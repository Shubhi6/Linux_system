<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To print chess board
Input: 
Output:chess board
comments


#!/bin/bash
for i in `seq 1 8`    #for rows
do 

  for j in `seq 1   8` #for columns
do 
  if [ $(($(($i + $j)) %2))  -eq  0  ]  # for alternate position  
 then
 echo   -e -n "\e[47m" " "             # for black colour
else
echo   -e -n "\e[40m" " "              #for white colour
 fi
 done
    
 
echo -e -n " \e[0m" " "               #for normal colour
echo 
done
   
 
   


