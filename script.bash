#!/bin/bash 
for nums in 5 10 100 200 300 400 500 600 700 800 1000 4000 8000 
do
	for threads in 1 2 4 6 8 
	do
		echo "called with theads:$threads and nums:$nums\n"
		gcc -DNUMS=$nums -DNUMT=$threads -o hw1 cs475hw1.c -lm -fopenmp -std=c99
		./hw1
	done
done