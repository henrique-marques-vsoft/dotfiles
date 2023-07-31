#!/bin/bash

git pull
git add .

# 3. Git Commit with current date in Unix format as the commit message 
current_date_unix=$(date +%s)
git commit -m "$current_date_unix"

git push

# Check the exit status of git commands
if [ $? -eq 0 ]; then
    echo "Saved!"
else
    echo "Error!"
fi
