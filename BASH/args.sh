#!/bin/bash
# Basic bash script using arguments
#echo $1 $2
for i in $@
do
	echo $i
done

echo "There were $# arguments"
