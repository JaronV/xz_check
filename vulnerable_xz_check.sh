#!/bin/bash

# Run xz --version and capture the output
version=$(xz --version 2>&1 | head -n 1 | cut -d ' ' -f 4)

# Check if the output contains "5.6.0" or "5.6.1"
if [[ $version == *"5.6.0"* ]] || [[ $version == *"5.6.1"* ]]; then
 echo "xz version $version is vulnerable"
else
 echo "xz version $version is not vulnerable"
fi
