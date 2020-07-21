#!/bin/bash

read -p "Enter a number " n
i=0
temp=$n
while [ $(($n%2)) -eq 0 ]
do
	arr[$i]=2
	n=$(($n/2))
	i=$(($i+1))
done

for(( j=3;j<=$n;j=$(($j+2)) ))
do
	while [ $(($n%$j)) -eq 0 ]
	do
		arr[$i]=$j
        	n=$(($n/$j))
	        i=$(($i+1))
	done
done
echo "prime factors of $temp are" ${arr[@]}
