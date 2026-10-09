#!/bin/bash

# Check for  CPU requirement
if [ -z "$1" ]; then
    echo "Usage: lab04_cpu_count_3.sh [MAX_NUM_CORES]"
    exit 1
fi

# Display informatio
echo "Hostname: $(hostname)"
echo "Date: $(date)"

# cores
num_cpu=$(nproc)

# Check CPU requirement
if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: The VM has fewer than $1 CPU cores."
    exit 1
else
    echo "OK: The VM has at least $1 CPU cores."
fi

# two additional commands
echo "The hostname command shows the name of the current machine."
echo "The date command shows the current date and time."
