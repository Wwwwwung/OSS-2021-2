#!/bin/sh

myFunc (){
	echo "Go into function"
	read num
	ls $num
	return
}

echo "Start program"
myFunc
echo "End program"

exit 0
