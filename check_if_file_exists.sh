#!/bin/bash
#if -> then -> else -> fi


a=10
b=15

if [ $a -gt $b ]; then
	echo "$a is bigger"
else
	echo "$b is bigger"
fi

if [ $# -eq 0 ]
then
	echo "Please pass a file as an argument"
	echo "Usage: ./if_file_exisits.sh <file_path>"
	exit 1
fi

if [ -f $1 ]; then
	echo "File Exists"
else
	echo "File doesn't exist"
fi
