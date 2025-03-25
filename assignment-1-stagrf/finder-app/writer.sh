#! /bin/bash

if [[ $# -ne 2 ]]; then
	echo "Two arguments are required"
	exit 1
fi
writefile="$1"
writestr="$2"
dirpath=$(dirname "$writefile")
if [[ ! -d "$dirpath" ]]; then
	mkdir -p "$dirpath" || { echo "Error: Could not create directory '$dirpath'"; exit 1; }
fi
echo "$writestr" > "$writefile" || { echo "Error: Could not write to file '$writefile'"; exit 1; }
echo "File is created and been written"
