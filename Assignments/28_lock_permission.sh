<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:./28_lock_permission.sh DIR
        before locking: total 0
        -rwx------ 1 wsa wsa 0 Aug 29 18:29 D2file1.txt
        -rwx------ 1 wsa wsa 0 Aug 29 18:29 D2file2.txt
         -rwx------ 1 wsa wsa 0 Aug 29 18:29 D2file3.txt
        after locking:
        total 0
        -rwx------ 1 wsa wsa 0 Aug 29 18:29 D2file1.txt
        -rwx------ 1 wsa wsa 0 Aug 29 18:29 D2file2.txt
        -rwx------ 1 wsa wsa 0 Aug 29 18:29 D2file3.txt

comments







#!/bin/bash
if [ $#  -eq  0 ] 
then
echo please enter file name in command line argument
 else
directory_name=$1
if [ -d     $directory_name ] # for checking arg is dir or not 
then
echo  " before locking: ` ls -l  $1 `" #long listing of dir
echo "after locking:"
chmod -R 700  $1             # to remove the permission of group and other
ls -l $1
fi
fi 
