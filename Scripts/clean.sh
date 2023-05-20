#!/bin/bash

# Delete all output and doc folders
find . -type d \( -name "output" -o -name "doc" \) -exec rm -rf {} \;

# Delete all a.out files
find . -type f -name "a.out" -exec rm -f {} \;