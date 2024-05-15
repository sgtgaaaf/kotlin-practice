#!/bin/bash

# to moving the jar and the lib folder from the target to deploy

# Define source and destination paths
source_path="./target/kotlin-lib"
jar_files=(./target/*.jar)
destination_path="./deploy/package/"

# Check if the source directory exists
if [ ! -d "$source_path" ]; then
  echo "Source directory '$source_path' does not exist."
fi

# Create the destination directory if it doesn't exist
mkdir -p "$destination_path"

# Move the kotlin-lib folder to the destination directory
mv -f "$source_path" "$destination_path"
# Move the jar files to the destination directory
for jar_file in "${jar_files[@]}"; do
  mv "$jar_file" "$destination_path"
done

# Check if the move operation was successful
if [ $? -eq 0 ]; then
  echo "Successfully moved 'kotlin-lib' folder to '$destination_path'."
else
  echo "Failed to move 'kotlin-lib' folder."
fi