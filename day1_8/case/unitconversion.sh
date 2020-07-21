#!/bin/bash
echo "Enter your choice"
echo "1. feet to inch"
echo "2. feet to meter"
echo "3. inch to feet"
echo "4. meter to feet"

read choice

case "$choice" in
2)
	read -p "enter feet " ft
	meter=0.3048
	echo "$ft feet is equal to " $(echo "$ft*$meter" | bc) "meter"
	;;
1)
	read -p "enter feet " ft
        inch=12
        echo "$ft feet is equal to " $(echo "$ft*$inch" | bc) "inch"
        ;;
3)
	read -p "enter inch " inc
        feet=0.0833333
        echo "$inc inch is equal to " $(echo "$inc*$feet" | bc) "feet"
        ;;
4)
	read -p "enter meter " meter
        ft=3.28084
        echo "$meter meter is equal to " $(echo "$ft*$meter" | bc) "feet"
        ;;
*)
	echo "Invalid choice"
	;;
esac

