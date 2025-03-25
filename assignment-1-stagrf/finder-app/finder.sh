#!/bin/bash

# Check if both arguments are provided
if [[ $# -ne 2 ]]; then
    echo "Error: Two arguments required."
    echo "Usage: $0 <directory_path> <search_string>"
    exit 1
fi

filesdir="$1"
searchstr="$2"

# Check if filesdir is a valid directory
if [[ ! -d "$filesdir" ]]; then
    echo "Error: '$filesdir' is not a valid directory."
    exit 1
fi

# Count the number of files
num_files=$(find "$filesdir" -type f | wc -l)

# Count the number of matching lines
matching_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

# Print the result
echo "The number of files are $num_files and the number of matching lines are $matching_lines"

