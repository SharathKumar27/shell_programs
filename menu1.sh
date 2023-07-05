#!/bin/bash

case $1 in
	mon) touch log1 log2
	;;
	tue) mv log1 log_1 
	mv log2 log_2
	;;
	wed) cp log_1 log_1_bu
	cp log_2 log_2_bu
	;;
	thu) ls -lrt > log_list
	;;
	fri) rm log_1_bu log_2_bu
	;;
	sat) echo "holiday"
	;;
	sun) echo "holiday"
	;;
esac
