<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:./24_redirection.sh
Hai hello
Hai hello
Hai hello
Hai hello

comments







#!/bin/bash
filename=24.1_file.txt
echo "before loop execution:`cat $filename`" #content before condition
echo "after loopexecution:"

tail -f  $filename >> $filename |tail -f $filename #for follow and appending  data and save in same file 
