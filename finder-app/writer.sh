#!/bin/bash

if [ $# -lt 2 ]
then 
        echo "Incorrect number of parameters"
        exit 1
fi

writefile=$1
writestr=$2

echo $writestr > $writefile

if [ $? -ne 0 ] 
then
	echo "error creating file"
	exit 1
fi
