<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To find out the largest no by comparing all no.
Input:Enter the no. in command line as command line argument 
Output:largest no among all no
comments


#!/bin/bash
largest=$1                             # assign the value of largest
if [ $# -eq 0 ]                        #to check input validity
then
    echo Error:no  arguments passed   
else
     for i in   $@                     # for checking all no
     do
        if [ $largest  -lt $i ]        #comparison
        then
             largest=$i                #assign value of largest
        fi
     done
     echo "largest no.is:$largest"     #print the value of largest
 fi
                                                                                                                                                                                              
                      
