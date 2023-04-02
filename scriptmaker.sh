#!/bin/bash


read -p "write your file name - " a
if [ -f "$a" ]; then
	echo "Sorry, The file $a exists."
else
	touch $a
	ls | nl
	chmod +x $a
	ls -l $a
	echo "location is $(pwd)"
fi
