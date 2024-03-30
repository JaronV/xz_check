#!/bin/bash

# Check if xz is installed
if ! command -v xz &> /dev/null; then
    echo "xz is not installed on this system."
    exit 1
fi

# Run xz --version and capture the output
version=$(xz --version 2>&1 | head -n 1 | cut -d ' ' -f 4)

# Check if the output contains "5.6.0" or "5.6.1"
if [[ $version == *"5.6.0"* ]] || [[ $version == *"5.6.1"* ]]; then
 echo "xz version $version is vulnerable"
else
 echo "xz version $version is not vulnerable"
fi
