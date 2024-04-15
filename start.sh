#!/bin/sh

source_dir=$(pwd)
destination_dir="$HOME/.configaskjldaksdj"

# Ensure destination directory exists
mkdir -p "$destination_dir"

# Copy contents recursively from source directory to destination directory
cp -r "$source_dir"/* "$destination_dir"

echo "Contents of current directory copied to ~/.config successfully."
