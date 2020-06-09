<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:no in ascending order or descending order
comments

#!/bin/bash
if [ $# -eq 0 ]     #for checking input validity
then 
echo please pass the argument through command line
else
choice=$1           #for assign argument
  case $choice in   #for case in choice
-a)                 #for ascending order
 array=($@)
for i in `seq 1  $(( ${#array[@]}-1))`  #for paases or round
 do 
   for j in `seq $i  $(( ${#array[@]}-1))` # for iteration
   do 
      if [   ${array[$i]}  -gt   ${array[$j]}   ]  # condition for comparison of greater no
      then                                  
          large=${array[$i]}                       # swaping concept
          array[$i]=${array[$j]}
          array[$j]=$large
       fi
    done
done
    echo -n  "ascending order is:"                 
for i in `seq 1  $(( ${#array[@]}-1))`         #loop for all values 
do
echo -n  "  ${array[$i]} "                         #printing values
done
;;
                             


-d)                                            #for descending no choice
array=($@)
   for i in `seq 1  $(( ${#array[@]}-1))`       #for passes or round
   do 
      for j in `seq $i  $(( ${#array[@]}-1))`    #for iteration
     do 
        if [   ${array[$i]}  -lt   ${array[$j]} ] #condition for comparison of smaller no 
        then 
            small=${array[$i]}                    #swapping concept
            array[$i]=${array[$j]}
            array[$j]=$small
         fi
      done
  done
      echo -n "descending order is:" 
  for i in `seq 1  $(( ${#array[@]}-1))`         #loop for all values
  do
  echo -n "  ${array[$i]} "                          #printing values
  done
;;

*)                                                  #default case
  echo please pass the choice
;;
esac                                                #termination of case
fi

