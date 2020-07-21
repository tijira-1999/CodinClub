#!/bin/bash

if [[ -z "$usersecret" ]]
then
	`export usersecret=dH34xJaa23`
	echo "usersecret set"
else
	echo "ERROR : usersecret already set"
fi
