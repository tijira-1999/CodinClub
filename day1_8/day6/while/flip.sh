#!/bin/bash
head=1
tail=0
numHead=0
numTail=0
while [ $numTail -ne 11 ] && [ $numHead -ne 11 ]
do
	x=$((RANDOM%2))
	if [ $x -eq 0 ]
	then
		numTail=$(( $numTail+1 ))
	else
		numHead=$(( $numHead+1 ))
	fi
#	echo -n $x
done
if [ $numTail -eq 11 ]
then
	echo "Tails got 11 times first"
else
	echo "Heads got 11 times first"
fi
