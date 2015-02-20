#!/bin/bash
# Basic bash script working with while and until loops
echo Basic while loop
i=0
while [ $i -le 10 ]; do
	echo i:$i
	((i+=1))
done

echo
echo Basic until loop
j=0
until [ $j -ge 10 ]; do
	echo i:$j
	((j+=1))
done

echo
#echo Basic for loop
#for i in {1..100..5}
#do
#	echo $i
#done
for (( i=1; i<=10; i++ ))
do
	echo $i
done

echo
echo Basic associative array
declare -A arr
arr["name"]="Jason"
arr["id"]="312"
for i in "${!arr[@]}"
do
	echo "$i: ${arr[$i]}"
done

echo
echo Command Substitution
for i in $(ls)
do
	echo "$i"
done
