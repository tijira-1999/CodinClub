#!/bin/bash
head=1
randomCoin=$(( RANDOM%2 ))
echo $randomCoin
if [ $randomCoin -eq $head ]
then 
   echo "Head"
else
   echo "Tail"
fi


