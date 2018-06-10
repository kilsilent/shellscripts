#!/bin/bash
#
#********************************************************************
#Author:		wangxiaochun
#QQ: 			29308620
#Date: 			2018-06-09
#FileName：		numgen.sh
#URL: 			http://www.magedu.com
#Description：		The test script
#Copyright (C): 	2018 All rights reserved
#********************************************************************

for(( i=1; i<=$1;i++));do
    for ((j=1 ;j<=$2;j++));do
        echo -ne "$[RANDOM%10] "
	        done
		echo
done
