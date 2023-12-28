#!/bin/bash

# Specify the directory path
directory="/path/to/your/directory"

# Specify the desired permissions (e.g., 755 for read, write, and execute for the owner, and read and execute for others)
permissions="755"

# Change permissions for all files in the directory
for file in "$directory"/*; do
    if [ -f "$file" ]; then
        chmod "$permissions" "$file"
        echo "Changed permissions for $file to $permissions"
    fi
done
