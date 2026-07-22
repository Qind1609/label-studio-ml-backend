#!/bin/bash

set -e

if [ ! -f .env ]; then
    echo "Please create a .env file with the following content:"
    echo "LABEL_STUDIO_API_KEY=your_api_key"
    echo "LABEL_STUDIO_HOST=http://your_label_studio_host:port"
    exit 1
fi

if [ -f ".env" ]; then
     echo "Exporting environment variables from .env file..."
    echo "Contents of .env file:"
    cat .env
    set -a
    . ./.env
    set +a
    echo "Environment variables from .env file have been exported."
fi