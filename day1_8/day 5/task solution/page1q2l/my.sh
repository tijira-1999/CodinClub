#!/bin/bash 

for filename in `ls *.txt`
do
	foldername=`echo $filename|awk -F. '{print $1}'`
	if [ -d $foldername ]
	then
		rm -r $foldername
	fi
	mkdir -p $foldername
	cp $filename $foldername
	echo $filename "moveed to" $foldername
done

