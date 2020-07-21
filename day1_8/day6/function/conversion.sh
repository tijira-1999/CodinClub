#!/bin/bash

function wrong() {
	echo "enter within specified range"
}

function fahToDeg() {
	first=$(echo "scale=3;5/9" | bc )
	med=$(echo "scale=3;$1-32" | bc )
	val=$(echo "scale=3;$med*$first" | bc)
	echo $val
}

function degToFah() {
	first=$(echo "scale=3;9/5" | bc)
	med=$(echo "scale=3; $1*$first" | bc)
	val=$(echo "scale=3;$med+32" | bc )
	echo $val
}
echo "Enter choice"
echo "1. degree to fahrenheit"
echo "2. fahrenheit to degree"
read choice

case "$choice" in
1)
	read -p "Enter degree within (0 to 100) " deg
	if [ $deg -gt 100 ] || [ $deg -lt 0 ]
	then
		wrong
	else
		result=$( degToFah $deg )
		echo "$deg degree is equal to " $result "fahrenheit"
	fi
	;;
2)
        read -p "Enter fahrenheit within (32 to 212) " fah
        if [ $fah -gt 212 ] || [ $fah -lt 32 ]
        then
                wrong
        else
                result=$( fahToDeg $fah )
                echo "$fah fahrenheit is equal to " $result "degree"
        fi
	;;
*)
	echo "Invalid choice"
	;;
esac
