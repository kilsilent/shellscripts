#!/bin/bash
#
#********************************************************************
#Author:		wangxiaochun
#QQ: 			29308620
#Date: 			2018-05-07
#FileName：		52_creatusers.sh
#URL: 			http://www.magedu.com
#Description：		The test script
#Copyright (C): 	2018 All rights reserved
#********************************************************************
for USER in user$1;do
  id $USER &>/dev/null
   [ $? -eq 0 ] || echo 'the user already existed'

 useradd $USER
  [ $? -eq 0 ] && echo 'the user created successfully'
 echo magedu |passwd --stdin $USER
 done

