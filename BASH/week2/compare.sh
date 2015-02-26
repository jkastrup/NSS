#!/bin/bash
# Basic comparison bash script
[[ "cat" == "cat" ]]
echo $?

[[ "cat" == "dog" ]]
echo $?

[[ 20 -eq 100 ]]
echo $?

#Null and not null operators
a=""
b="cat"
[[ -z $a && -n $b ]]
echo $?
