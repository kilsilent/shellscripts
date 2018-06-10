#!/bin/bash
#
#********************************************************************
#Author:		nieshaokai
#Date: 			2018-07-16
#FileName：		scp.sh
#URL: 			http://www.magedu.com
#Description：		The test script
  
 echo "start copying"
 scp $* wang@172.20.0.7:home/wang/bin
 echo "copy complete"
