<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the no. or string in command line as command line argument  
Output:./25_recursion.sh  4 5 6j 7 q
4
5
6j
7
q

comments






#!/bin/bash
if [ $# -eq 0 ]
then
echo please pass  the argument
else

function  recursion() # making fun to using for every given argument array
{  
for i in $@
do
 echo $i
done
}
recursion $@ #calling fun by argument
fi
