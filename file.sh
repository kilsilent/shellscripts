#!/bin/bash
#
#********************************************************************
#Author:		wangxiaochun
#QQ: 			29308620
#Date: 			2018-05-08
#FileName：		file.sh
#URL: 			http://www.magedu.com
#Description：		The test script
#Copyright (C): 	2018 All rights reserved
#********************************************************************
ls $1 >/dev/null
[ $? -eq 0 ] || echo "the directory not exist"

for F in `ls $1`;do 
file $1/$F
echo i do it 
done
