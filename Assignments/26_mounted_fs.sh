<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  file system in command line as command line argument  
Output: ./26_mounted_fs.sh dev/sdal
        file system dev/sdal is mounted on  with 1% used and 40K free

comments







#!/bin/bash
if [ $# -eq 0 ] #checking argument
then
echo please pass the argument
else
mount=( `df -h| tr -s [: space:] | cut -d " " -f6`) # for mounting field in the info of filesystem
use=(`df  -h| tr -s [:space:] | cut -d " " -f5`) #for use field
space=(`df -h | tr -s [:space:] | cut -d " " -f3`) #for space field
file=(`df  -h| tr -s [:space:]| cut -d " " -f1`)  #for file field
count=-1     
flag=0
       for i in ${file[@]}
       do
          let count=$count +1
               if [ $i=$1 ]
               then 
                 flag=1
                 break 
               fi
         done 
       if [  $flag -eq 1 ]
       then
    echo "file system $1 is mounted on ${mount[$count]} with ${use[$count]} used and ${space[$count]} free" 
       else
       echo "$1 is not found"
       fi
fi
