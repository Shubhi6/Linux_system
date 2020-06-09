<<comments
Author:Shubhi Omar
Date:21/08/19
Description: To sort a given no. in ascending or descending order as per choice.
Input:Enter the  choice and no. in command line as command line argument  
Output:fileystem udev has greater than or equal to 90% freespace.
       fileystem tmpfs has greater than or equal to 90% freespace.
       fileystem /dev/sda1 has greater than or equal to 90% freespace.
       fileystem tmpfs has greater than or equal to 90% freespace.
       fileystem tmpfs has greater than or equal to 90% freespace.
       fileystem tmpfs has greater than or equal to 90% freespace.
       fileystem tmpfs has greater than or equal to 90% freespace.

comments







#!/bin/bash 
df  > file_info.txt #output of file system in file_info

declare -a array=(`cat file_info.txt`) #declaration of array
use=(`cat file_info.txt| tr -s [:space:] | cut -d " " -f5 | tr -d [:punct:]`) #squeezing space and field and removing %

filesystem=(`cat file_info.txt | tr -s [:space:] | cut -d " " -f1`) #taking filesystem field

for i in `seq  1 $((${#use[@]}-1))` #loop for array till length
do
k=${use[$i]}
 avail=$((100 -$k))  #checking avail space

 if [ $avail -ge 90 ]
then
echo   fileystem ${filesystem[$i]}  has  greater than or equal to 90% freespace.
fi
done
