#!/bin/bash

read -p "Enter lower bound " n1
read -p "Enter upper bound " n2
echo -n  "Prime numbers between $n1 to $n2 are " 
	for ((i=$n1;i<=$n2;i++))
	do
		if [ $i -eq 1 ] || [ $i -eq 0 ]
		then
			continue
		fi
		f=1
		for (( j=2;j*j<=$i;j++ ))
		do
			if test `expr $i % $j` -eq 0
			then
				f=0
				break
			fi
		done
		if test $f -eq 1  
		then
			echo -n "$i "
		fi
	done
echo " "
