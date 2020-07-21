#!/bin/bash
read -p "enter first number " a
read -p "enter first number " b
read -p "enter first number " c

echo "result of a+b*c" $(( $a+$b*$c ))
echo "result of a%b+c" $(( $a%$b+$c ))
echo "result of c+a/b" $(( $c+$a/$b ))
echo "result of a*b+c" $(( $a*$b+$c ))




