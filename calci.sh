#!/bin/bash
opt=1
while [ $opt -lt 4 ]&&[ $opt -gt 0 ]
do

echo " select the operation to be performed"
echo " 1.add , 2.sub , 3.mul , 4.div"

read opt
case $opt in
	1) 
		echo "enter the numbers"
		read num 
		sum=0;
		for i in $num
		do
			sum=`expr $sum + $i`
		done
		echo "sum of numbers is $sum"
		;;
	4)	
		echo "enter first numbers"
                read num1
                echo "enter second numbers"
                read num2
                if [ $num1 -gt $num2 ]
                then
                        rem=`expr $num1 / $num2`
                else
                        rem=`expr $num2 / $num1`
                fi
                        echo "sub of numbers is $rem"
                ;;

 	2)
                echo "enter first numbers"
                read num1
		echo "enter second numbers"
		read num2
                if [ $num1 -gt $num2 ]
		then
			bal=`expr $num1 - $num2`
		else
			bal=`expr $num2 - $num1`
		fi
			echo "sub of numbers is $bal"
                ;;
	3)
                echo "enter the numbers"
                read num
               	pro=1;
                for i in $num
                do
                        pro=`expr $pro \* $i`
                done
                echo "product of numbers is $pro"
                ;;
	*)	echo "you entered incorrect operation"
		;;	
esac
done
exit 1

