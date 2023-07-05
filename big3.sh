#!/bin/bash

if [ $# -ne 3 ]
then 
	echo "please enter exactly three number"
	exit 1
fi


if [ $1 -gt $2 ] && [ $1 -gt $3 ]
then 
	echo " $1 is large "
elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
then
	echo " $2 is large "
else
	echo " $3 is large "
fi
