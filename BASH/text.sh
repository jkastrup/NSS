#!/bin/bash
# Reading and writing text files
i=1
while read f; do
	echo "Line $i: $f"
done < file.txt
