#1/bin/bash

num=1;
while read line 
do
	word=`echo "$line"|wc -c`
	letter=`expr $word - 1`
	echo "$letter :  $line"
done < $1
