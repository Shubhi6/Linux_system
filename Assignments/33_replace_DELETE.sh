 <<comments
Author:Shubhi Omar
Date:21/08/19
Description: 
Input:Enter file name in command line argument. 
Output: before deleting
        #include<stdio.h>
        int main()
        <--delete-->
        printf("HEllo World\n");
        }
        AFTER DELETING
        #include<stdio.h>
        int main()
        <--delete-->
        printf("HEllo World\n");
comments







#!/bin/bash
if [ $# -eq 0 ]
then 
echo ERROR:please pass the argument
else
   if [ -f $1 ] #condition for existence of file
     then 
     if [ -s $1 ] #condition for checking content
     then 
     num=(`wc -l $1 | cut -d" " -f1`)
   let k=$num*20         
   let lim=$k/100        # 20%
   echo before deleting
   cat $1
    for i in ` shuf -i 1-$num -n $lim `   # take random line in the given limit
     do
        sed -i "${i}d" $1          #for deleting line  in the given file
        sed -i "${i}i<--delete-->" $1 #for replacing delete
     done    
     echo AFTER DELETING
     cat $1
     else
     echo "ERROR:$1 is empty file so can't replace the string"  
       fi
  else
    echo ERROR: no such file
    fi
fi
