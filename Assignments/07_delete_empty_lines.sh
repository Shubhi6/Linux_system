<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To delete empty lines of file
Input:Enter the file name in command line as command line argument with operator
Output:Empty  lines of given file is deleted. 
comments







#!/bin/bash  
if [ $# -eq  0  ]       #check input validity
then 
echo please pass the file name through command lines
else
cat $1   #content of original file
cat $1 | tr -d [:blank:] | sed -i '/^$/d' > file2.txt   # command for deleting space
echo
echo "content of file after empty lines are deleted-"
cat file2.txt   # content of file after deletion of empty files
fi
