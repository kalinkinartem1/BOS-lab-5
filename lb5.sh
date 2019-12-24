#!/bin/bash

ps axo euid,ruid,comm | tail -n +2 | while read ln
do
	inf=($ln)
	if [ ${inf[0]} != ${inf[1]} ]
	then
		echo ${inf[2]}
	fi
done
