#!/bin/bash
# Guessing game using Bash script
random=$RANDOM # Generates a random number
num=${random:0:1} # Gets first digit of random number

read -p "Guess a random number! [1-9] " guess
while [[ $guess != $num ]]; do
	read -p "Wrong, please try again! " guess
done
echo "Nice, $num was the answer!"
