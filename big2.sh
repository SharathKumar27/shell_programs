#!/bin/bash

if [ $# -ne 2 ]
then
	echo " enter only two numbers "
else
	if [ $1 -gt $2 ]
then
        echo " $1 is largest among $1 and $2"
else
        echo " $2 is largest among $1 and $2"
	fi
fi




