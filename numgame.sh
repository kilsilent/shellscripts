#!/bin/bash
#
#********************************************************************
#Author:		wangxiaochun
#QQ: 			29308620
#Date: 			2018-05-07
#FileName：		numgame.sh
#URL: 			http://www.magedu.com
#Description：		The test script
#Copyright (C): 	2018 All rights reserved
#********************************************************************

N=$[RANDOM%11]
read -p "your number: " n
until [ $n -eq $N ];do
read -p "your number: " n
  if [ $n -gt $N ];then
  echo "the number is lesser"
 elif [ $n -lt $N ];then
  echo "the mumber is bigger"
  else
  echo "please enter a reasonable number"
  fi
done
echo "the number is ok"
break

