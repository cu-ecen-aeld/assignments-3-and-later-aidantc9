#!/bin/bash

if [ $# -lt 2 ]
then 
	echo "Incorrect number of parameters"
	exit 1
fi

filedir=$1
searchstr=$2

if ! [ -d $filedir ]
then
	echo "Directory does not exsist"
	exit 1
fi
 
x=$(find $filedir -type f | wc -l)
y=$(grep -r $searchstr $filedir | wc -l)

echo The number of files are $x and the number of matching lines are $y

