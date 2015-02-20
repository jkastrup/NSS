#!/bin/bash
# Basic bash script selecting behavior using case
a="bird"
case $a in
	cat) echo "Feline";;
	dog|puppy) echo "Canine";;
	*) echo "No Match!";;
esac
