#!/bin/bash
read -p "Enter a number " num
echo -n "Factors of $num are "
for ((i=1;i*i<=$num;i++))
do
	if [ $(( $num%$i )) -eq 0 ]
	then 
		if [ $(( $num/$i )) -eq $i ]
		then
			echo -n $i
		else
			echo -n "$i $(($num/$i)) "
		fi
	fi
done
echo " "
