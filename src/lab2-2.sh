#!/bin/bash

read num1 sign num2

result=`expr $num1 $sign $num2`

echo $result

exit 0
