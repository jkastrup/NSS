#!/bin/bash
# Basic bash script ensuring a response
#if [ $# -lt 3 ]; then
#	cat <<- EOM
#	This command requires three arguments:
#	username, userid, and favorite number.
#	EOM
#else
#	# the program goes here
#	echo "Username: $1"
#	echo "Userid: $2"
#	echo "Favorite #: $3"
#fi

# looping to ensure a response
#
#read -p "Favorite animal? [cat]" a
#while [[ -z "$a" ]]; do
#	a="cat"
#done
#echo "$a was selected."

# Basic Validation of input
read -p "What year? [nnnn] " a
while [[ ! $a =~ [0-9]{4} ]]; do
	read -p "A year, please! [nnnn] " a
done
echo "Selected year was: $a"
