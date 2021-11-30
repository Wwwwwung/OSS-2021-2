#!/bin/sh

echo "Do you like Linux? (yes/no)"
read answer

case $answer in
	yes|y|Y|Yes|YES|Yyyyes)
		echo "yes";;
	[nN]*)
		echo "no";;
	*)
		echo "Please enter yes or no."
		exit 1;;
esac
exit 0
