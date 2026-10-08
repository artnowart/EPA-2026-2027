#!/bin/bash

#  supplied a CPU requirement
if [ -z "$1" ]; then
    echo "Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]"
    exit 1
fi

# number  CPU cores
num_cpu=$(nproc)

#  CPU requirement
if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: The VM has fewer than $1 CPU cores."
    exit 1
else
    echo "OK: The VM has at least $1 CPU cores."
fi
