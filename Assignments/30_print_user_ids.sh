<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:  ./30_print_user_ids.sh 
          total count of user id between 500 and 1000:3
          ./30_print_user_ids.sh  2 100
          total count of user id between 2 and 100:16

comments







#!/bin/bash

count=0 #initialisation
count_1=0
	declare -a array=(` cat /etc/passwd | cut -d: -f3`) #declaration
 if [ $# -eq 0 ]
then
    for i in   ${array[@]}
    do

      if  [   $i -ge  500  -a  $i -le  1000  ]
      then
      count=$((count + 1))   #counting
      fi
    done
echo total count of user id between 500 and 1000:$count
else
      for i in ${array[@]} 
      do
      
        if  [    $i -ge $1   -a   $i  -le $2      ] 
        then
        count_1=$((count_1 + 1))
        fi
     done  

   
echo total count of user id between $1 and $2:$count_1

fi
 



