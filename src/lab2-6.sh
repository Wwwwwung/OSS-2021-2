#!/bin/bash

read name

if [ -e $name ]
then
	echo "There is a folder with the same name."
else
	mkdir $name
fi

cd $name

for i in 0 1 2 3 4
do
	touch file$i.txt
done

mkdir $name

tar cvf $name.tar file0.txt file1.txt file2.txt file3.txt file4.txt

tar xvf $name.tar -C $name

exit 0
