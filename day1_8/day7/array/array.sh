#!/bin/bash

for((i=0;i<=5;i++))
do
	arr[$i]=$i
done
echo ${arr[@]}
