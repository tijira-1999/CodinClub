#!/bin/bash
read -p "enter var1 " var1
read -p "enter var1 " var2
if [ $var1 -gt $var2 ]
then 
	echo "$var1 is greater"
elif [ $var1 -eq $var2 ]
then
	echo "both equal"
else
	echo "$var2 is greater"
fi
