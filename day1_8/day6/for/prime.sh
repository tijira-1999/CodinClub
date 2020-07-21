#!/bin/bash
f=0
read -p "Enter a number " n
if [ $n -gt 1 ]
then
	for ((i=2;i*i<=$n;i++))
	do
		if [ `expr $n % $i` -eq 0 ]
		then
			f=1
			break
		fi

	done
	if test $f -eq 1  
	then
		echo "Not Prime"
	else
		echo "Prime"
	fi
else
	echo "Not prime"
fi
