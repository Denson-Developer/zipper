#!/bin/bash

# Define the source files and the output zip file
source_files=("E:/Folder to be zipped/Greetings.txt" "E:/Folder to be zipped/Introduction.txt")
zip_file="E:/Zipped file.zip"

# Create the zip file
zip -q -j "$zip_file" "${source_files[@]}"

# Check if the zip file is created
if [ -e "$zip_file" ]; then
   echo "ZIP file created"
else
   echo "ZIP file not created"
fi
