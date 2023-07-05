#!/bin/bash

num=$1
fact=1

#while [ $num -gt 1 ]
#do
#	echo "$num"
#	num=`expr $num - 1`
#done

while [ $num -gt 1 ]
do
	fact=`expr $num \* $fact`
	num=`expr $num - 1`
done
echo " the factorial of $1 is $fact "
