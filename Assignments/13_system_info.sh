<<comments
Author:Shubhi omar
Date:26/08/2019
Description:To print information of system
Input:Enter the choice as per requirement
output:./13_system_info.sh 
please enter the choice
1
current logged users:wsa tty7 2019-09-11 11:43 (:0) wsa pts/4 2019-09-11 11:48 (:0.0)
 
comments


#!/bin/bash
echo please enter the choice
read num
case $num in
   1)  echo "current logged users":`who` #or use $user
      ;;
   2)echo "your shell directory":$SHELL
     ;;
  3) echo "Home directory": $HOME
    ;;
  4)echo "OS name & version":`cat /etc/os-release `
   ;;
  5)echo "current working directory":`pwd`
   ;;
  6)echo "no. of users logged in"`w`
   ;;
  7)echo "show all available shell in system":`cat /etc/shells`
   ;;
  8)echo "hard disk information":`lsblk`  
  ;;
  9)echo "CPU information":`lscpu`# `proc/cpuinfo`
  ;;
  10)echo "Memory information":`free` # `proc/meminfo`
  ;;
  11)echo "file system information":`df`
  ;;
  12)echo "currently running process":`ps`
  ;;

  *)echo "please enter correct num"
   ;;
esac
