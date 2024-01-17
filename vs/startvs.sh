#!/bin/bash

check_success() {
    if [ $? -eq 0 ]; then
        echo "Command executed successfully"
    else
        echo "Error: Command failed. Exiting."
        exit 1
    fi
}

# VSX
cd vsx
docker-compose down
check_success
docker-compose build
check_success
docker-compose up -d
check_success
echo "VSX is running"

cd ..

# Data API
cd vscommerce_api
docker-compose -p data-api up -d
check_success
echo "Data API is running"
