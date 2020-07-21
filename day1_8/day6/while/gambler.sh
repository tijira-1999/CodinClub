#!/bin/bash
gamble=100
won=0
bet=0
while [ $gamble -ne 0 ] && [ $gamble -ne 200 ]
do
	x=$((RANDOM%2))
#	x=0
	if [ $x -eq 1 ]
	then
		gamble=$(($gamble+1))
		won=$(($won+1))
	else
		gamble=$(($gamble-1))
	fi
	bet=$(($bet+1))
done
echo "money left" $gamble
echo "times won " $won
echo "number of bets " $bet
