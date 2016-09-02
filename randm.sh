#!/bin/bash
for ((i=0; i<1000; i++))
do
	echo $(($RANDOM%68+1 )) >>full.dat
done
