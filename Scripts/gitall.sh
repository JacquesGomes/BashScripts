#!/bin/bash

# Define the directory containing subfolders with git.sh scripts
parent_directory="repos"

# Loop through each subfolder in the parent directory
for folder in "$parent_directory"/*; do
    if [ -d "$folder" ]; then
        # Check if the git.sh script exists in the current folder
        if [ -e "$folder/git.sh" ]; then
            echo "Running git.sh script in $folder"
            
            # Change into the folder and execute the git.sh script
            (cd "$folder" && ./git.sh)
            
            echo "Finished running git.sh in $folder"
        else
            echo "git.sh script not found in $folder"
        fi
    fi
done
