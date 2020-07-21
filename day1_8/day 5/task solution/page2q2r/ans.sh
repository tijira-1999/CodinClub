#!/bin/bash

mkdir original updated
cp original-file.sh original/
cp updated-file.sh updated/

diff original updated

mkdir original-backup
cp original/original-file.sh original-backup

sdiff -o original-backup/original-file.sh original/original-file.sh updated/updated-file.sh

diff updated/updated-file.sh original-backup/original-file.sh

if [ `echo $?` ]
then
	echo "no difference in updated-file.sh and original-file.sh"
fi
