#!/bin/bash

# Set the path to your download folder
download_folder="/path/to/your/download/folder"

# Create directories for different file types
mkdir -p "$download_folder/Documents"
mkdir -p "$download_folder/Images"
mkdir -p "$download_folder/Archives"
mkdir -p "$download_folder/Scripts"
mkdir -p "$download_folder/Other"

# Move files to appropriate directories based on their extensions
for file in "$download_folder"/*; do
    if [ -f "$file" ]; then
        case "$file" in
            *.pdf|*.doc|*.docx|*.txt)
                mv "$file" "$download_folder/Documents/" ;;
            *.jpg|*.jpeg|*.png|*.gif)
                mv "$file" "$download_folder/Images/" ;;
            *.zip|*.tar|*.gz)
                mv "$file" "$download_folder/Archives/" ;;
            *.sh|*.bash|*.py)
                mv "$file" "$download_folder/Scripts/" ;;
            *)
                mv "$file" "$download_folder/Other/" ;;
        esac
    fi
done

echo "Download folder has been organized."
