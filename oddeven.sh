#!/bin/bash

line_num=1

while read line
do
	rem=`expr $line_num % 2`
	if [ $rem -eq 0 ]
	then
		echo "$line_num : $line" >> evenfile
	else
		echo "$line_num : $line" >> oddfile
	fi
	line_num=`expr $line_num + 1`
done<$1

echo "=====================odd file========================="
cat oddfile
echo "=====================even  file======================="
cat evenfile
rm oddfile evenfile
