#!/bin/bash

cent=`df -h . | tail -1 | awk -F " " '{print $(NF - 1)}' | sed 's/%//g'`

if [ $cent -gt 10 ]
then
	#cat file | mail -s "memory reached 90" -c "abc@gmail.com" xyz@gmail.com
	echo "memory reached 90" >> testdisk
	
fi

