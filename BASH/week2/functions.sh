#!/bin/bash
# Basic bash script using functions
function greet {
	echo "Hi there, $1! What a nice $2"
}

#echo "And now, a greeting:"
#greet Jason night

function numberthings {
	i=1
	for f in $@; do
		echo $i: $f
		((i+=1))
	done
}

numberthings $(ls)
