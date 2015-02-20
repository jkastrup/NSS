#!/bin/bash
#Basic bash script getting input during execution
#echo "What is your name?"
#read name

#echo "What is your password"
#read -s  pass

#read -p "What's your favorite animal? " animal
#echo name: $name, pass: $pass, animal: $animal

select option in "cat" "dog" "quit"
do
	case $option in
		cat) echo "cats like to sleep.";;
		dog) echo "Dogs like to play catch.";;
		quit) break;;
		*) echo "I don't know what that is";;
	esac
done
