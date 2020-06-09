<<comments
Author:Shubhi Omar
Date:21/08/19
Description: Generate a  no. pattern
Input:Enter the no. to generate patten
Output: 1
        1 2
        1 2 3
        1 2 3 4

comments


#!/bin/bash                                           #path for interpreter
echo please enter the no to generate pattern           # initialise a no.
 read n
 for i in `seq 1 $n`                                  #initialisation for rows
  do 
   for j in `seq 1 $i`                                # initialisation for coloumns
    do 
  echo -n " $j "                                        #for printing the value
   done
 echo                                                #for changing the row after completing coloumns operation
done  
