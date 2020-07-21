#!/bin/bash
c=0
for((i=0;i<=100;i++))
do
	if [ $i -ne 0 ] && [ $(($i%11)) -eq 0 ]
	then
		arr[$c]=$i
		c=$(($c+1))
	fi
done
echo "The numbers are " ${arr[@]}
