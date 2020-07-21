#!/bin/bash

function prime() {
f=0
n=$1
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
	if test $f -eq 0  
	then
		echo "Prime number"
	else
		echo "not Prime number"
	fi
else
	echo "not Prime number"
fi

}

function palindrome() {
	i=$1
	num=0
	while [ $i -ne 0 ]
	do
		rem=$(($i%10))
		num=$(( $(($num*10))+rem )) 
		i=$(($i/10))
	done
	echo $num
}


read -p "Enter a number " n
val1=$( prime $n )
echo "$n is" $val1
val2=$( palindrome $n )
echo "palindrome of $n is " $val2
val3=$( prime $val2 )
echo "$val2 (palindrome of $n) is" $val3
