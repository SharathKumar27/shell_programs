#!/bin/bash

sed '1d' $1 > tempdata
cat tempdata
echo "enter employee age to search"
read data
while read line
do
	age=`echo "$line" | awk -F " " '{print $3}'`
	#if [ $age -gt 30 ] && [ $age -lt 50 ]
	if [ $age -eq $data ] 
	then 
		echo "$line" | awk -F " " '{print $1}'
	fi
done<tempdata
