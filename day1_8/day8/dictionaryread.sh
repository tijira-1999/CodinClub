#!/bin/bash

declare -A user

for ((i=0;i<3;i++))
do
	read -p "enter the key name " key
	read -p "enter the corresponding value " val
	user[$key]=$val
done
echo "keys are " ${!user[@]}
echo "values are" ${user[@]}

#echo "key values pair are" ${!user[@]:0} ${user[@]:0}
