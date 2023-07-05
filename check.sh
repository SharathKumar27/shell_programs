#!/bin/bash

echo " Enter the name of file directory or link "
read name 

if [ -f $name ]
then
	echo " $name is a file "
elif [ -d $name ]
then 
	echo " $name is a directory "
elif [ -L $name ]
then
	echo " $name is a link "
else 
	echo " $name doesnot exist "
fi
