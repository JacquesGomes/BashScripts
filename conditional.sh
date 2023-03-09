#! /usr/bin/bash

count=10
#-eq equal / -ne not equal / -gt greater then
if [ $count -eq 10 ]
then
	echo "The condition is true"

elif [ $count -eq 9 ]
then
	echo "The condition is something else"

else
	echo "The condition is false"
fi

age=10

if [ "$age" -gt 10 ] && [ "$age" -lt 40 ]
then
	echo "The age is correct"

elif [ "$age" -gt 10 ] || [ "$age" -lt 40 ]
then
	echo "Interesting" 
else
	echo "Incorrect age"
fi