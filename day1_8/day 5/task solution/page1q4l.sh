#!/bin/bash

mkdir -p ~/Documents/TerminalCommands/backup

for file in `find ~/Documents/TerminalCommands/archive -mtime +4`
do
	mv $file ~/Documents/TerminalCommands/backup
	echo "moved" $file "to backup folder"
done

