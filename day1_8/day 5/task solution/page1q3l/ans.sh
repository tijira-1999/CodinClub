#!/bin/bash
rm *.log
touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1
ls

for filename in `ls *.log.1`
do
	basename=`echo $filename|cut -d"." -f1`
	d=`date +%d%m%Y`
	mv $filename $basename"-"$d".log"
	echo $filename "changed to" $basename"-"$d".log"
done
ls
echo "all file names changed"
