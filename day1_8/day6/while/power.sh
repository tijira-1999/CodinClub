#!/bin/bash
if [ $1 ]
then
	n=$1
	i=0
	echo "Powers of 2 are "
	while [ $((2**$i)) -le 256 ] && [ $((2**$i)) -le $(( 2**$n )) ]
	do
		echo "$((2**$i))"
		i=`expr $i + 1`
	done
else
	echo "please provide input"
fi
