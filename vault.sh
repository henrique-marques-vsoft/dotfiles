#!/bin/bash

check_git_command() {
    if [ $? -eq 0 ]; then
        echo "Git $1 completed successfully."
    else
        echo "Error!"
        exit 1
    fi
}

git pull > /dev/null 2>&1
check_git_command "pull"

git add . > /dev/null 2>&1
check_git_command "add"

current_date_unix=$(date +%s)
git commit -m "$current_date_unix" > /dev/null 2>&1
check_git_command "commit"

git push > /dev/null 2>&1
check_git_command "push"

echo "Success!"
