#!/bin/bash

# Count CPU cores
num_cpu=$(nproc)

# Check CPU requirement
if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: The VM has fewer than $1 CPU cores."
    exit 1
else
    echo "OK: The VM has at least $1 CPU cores."
fi
