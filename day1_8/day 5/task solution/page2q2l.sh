#!/bin/bash
arr=(ls hello)
for i in "${arr[@]}"
do
	`$i >/dev/null`
	if [ `echo $?` -eq "0" ]
	then
		echo $i "command executed successfully"
	else
		echo $i "command execution failed"
	fi
done

