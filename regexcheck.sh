#!/bin/bash

# Check if a file path is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

file_path=$1

# Use grep with a basic regular expression to find and print email addresses
grep -E -o "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" "$file_path"
