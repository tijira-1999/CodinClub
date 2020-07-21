#!/bin/bash
if [ -d $1 ]
then
	echo "folder exists"
else
	mkdir $1
	echo "folder created"
fi
