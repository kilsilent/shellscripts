#!/bin/bash
#
#********************************************************************
#Author:		nieshaokai
#QQ: 			1195831127
#Date: 			2018-05-08
#FileName：		chess.sh
#URL: 			http://www.magedu.com
#Description：		The test script
#Copyright (C): 	2018 All rights reserved
#********************************************************************
# n     棋盘单元的边长，单位是一个空格的长度
# N     棋盘的行数
# A  第一行第一列单元色
# B  第一行第二列单元色
# Space 棋盘单元空格的大小



#值为3的方块大小展示
#------------------------------------------------------------------------------------------

for((i=1,a=40,b=47; i<=24;i++ )); do
    for((j=1;j<=4;j++ )) ;do
    echo -ne "\e[$a;1m      \e[0m\e[$b;1m      \e[0m"
    done
    echo
     [ $[i%3] -eq 0 ] && { a=$[a^b];b=$[a^b];a=$[a^b]; }
 done

echo " This is the chessboard of the value=3 "
echo

#用户输入模块
#选择方块大小
#------------------------------------------------------------------------------------------

while true; do
read -p "please enter the checkerboard cell size(default 1): " -t 6 n 
   if [ -z $n ];then
      echo
      break   #用户输入为空，后两项直接跳过，赋给默认值
   elif [[ $n =~ [0-9] ]] && [ $n -le 10 ] ;then 
      break
   else
     echo -e "\e[31;1mplease enter a reson number eg '1-10'\e[0m"
   fi  
      echo
done 


#选择第一个方块的颜色
#------------------------------------------------------------------------------------------
while true;do    
   if [ -z $n ];then
     n=1           #判断第一项是不是空，如果是空，则默认此项也用默认项，这里给单元块大小赋默认值 n=1
     break
     echo
   fi


#打印颜色选择列表

echo -e "\e[30;1m40 ----- black\e[0m"
echo -e "\e[31;1m41 ----- red  \e[0m"
echo -e "\e[32;1m42 ----- green \e[0m"
echo -e "\e[33;1m43 ----- yellow\e[0m"
echo -e "\e[34;1m44 ----- blue \e[0m"
echo -e "\e[35;1m45 ----- purpel\e[0m"
echo -e "\e[36;1m46 -----sky-blue \e[0m"
echo -e "\e[37;1m47 ----- white\e[0m"
echo -e "\e[$[RANDOM%8+40];$[RANDOM%8+30]mR|r ----- RANDOM\e[0m"
    
read -p "please choose the First unit color(default 40) : " -t 6 A
    if [ -z $A ];then
     echo
     break
   elif [[ $A =~ [0-9] ]] && [ $A -le 47 ] && [ $A -ge 40 ];then
     break
   elif [[ $A =~ [Rr] ]];then
   A=$[RANDOM%8+40]
   echo random-value is $A
     break
   else
     echo -e  "\e[31;1mplease enter the number listed\e[0m"
     echo
   fi
done   


#选择第二个方块的颜色
#------------------------------------------------------------------------------------------
while true;do     
   if [ -z $A ];then 
      A=40          # 判断第一个方块颜色是不是默认值，如果默认，那么此项也启用默认值，并且为两个方块赋值。
      B=47
      break
   fi   
read -p "please choose the Second unit color(default 47) : " -t 6 B
  if [ -z $B ];then # 这里判断当前输入是不是用户选择了默认，或者输入超时 
      B=47
      break
  elif [[ $B =~ [0-9] ]] && [ $B -le 47 ] && [ $B -ge 40 ];then
     break
  elif [[ $B =~ [Rr] ]];then #是否采用随机值
   B=$[RANDOM%8+40]
   echo random-value is $B
     break
    else
     echo -e  "\e[31;1mplease enter the number listde\e[0m"
  fi
done
echo  


#-主函数棋盘体打印---------------------------------------------
# i：行数
# j:列数

#打印象棋谱的单元块
 for ((i=1 ;i<=${n}*2 ;i++)); do
 Space=${Space}`echo -n " "`
  done

for((i=1; i<=$n*8;i++ ));do
    for((j=1;j<=4;j++ ));do
    echo -ne "\e[$A;1m${Space}\e[$B;1m${Space}\e[0m"
    done
    echo
   if  [ $[i%n] -eq 0 ];then
   A=$[A^B];B=$[A^B];A=$[A^B]
   fi
done

#测试git用的
#测试git用的
#测试git用的








