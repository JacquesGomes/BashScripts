#!/bin/bash

# Define the patterns to match
patterns=".idea/|.metadata/|.settings/|bin/|tmp/|.classpath|.project|*.tmp|*.bak|*.swp|*~.nib|local.properties|.loadpath|.factorypath"

# Use git ls-files and grep to filter the list of files
files=$(git ls-files | grep -E "$patterns")

# Use xargs and git rm to remove the files from the repository
echo "$files" | xargs git rm --cached --ignore-unmatch