#!/bin/bash
#
#********************************************************************
#Author:		wangxiaochun
#QQ: 			29308620
#Date: 			2018-05-07
#FileName：		nmaping.sh
#URL: 			http://www.magedu.com
#Description：		The test script
#Copyright (C): 	2018 All rights reserved
#********************************************************************
net=172.20.$1
for i in {1..254};do
         { if ping -c1 -w1 $net.$i &> /dev/null ;then
	      echo "$net.$i is up" 


	   fi; } & 
    done 
    wait

