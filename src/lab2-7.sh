#!/bin/bash

read name

mkdir $name
cd $name

for i in 0 1 2 3 4 5
do
	touch file$i.txt
done

for i in 0 1 2 3 4 5
do
	mkdir file$i
	mv file$i.txt file$i
done

exit 0
