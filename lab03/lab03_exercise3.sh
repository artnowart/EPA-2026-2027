#!/bin/bash

# Exercise 3
# This script checks whether the number of running processes
# is greater than the number supplied by the user

# Get the maximum number
# from the command-line argument
MAX_PROCESSES=$1

# Get the user's output choice
# 1 = screen, 2 = file
OUTPUT_CHOICE=$2

# Count the number of currently running processes
CURRENT_PROCESSES=$(ps -e --no-headers | wc -l)

# Compare the current number of processes
# with the maximum supplied by the user
if [ "$OUTPUT_CHOICE" -eq 1 ]
then
    if [ "$CURRENT_PROCESSES" -gt "$MAX_PROCESSES" ]
    then
        echo "Maximum number of processes exceeded"
    else
        echo "The maximum number of processes NOT exceeded"
    fi

elif [ "$OUTPUT_CHOICE" -eq 2 ]
then
    date >> process.log

    if [ "$CURRENT_PROCESSES" -gt "$MAX_PROCESSES" ]
    then
        echo "Maximum number of processes exceeded" >> process.log
    else
        echo "The maximum number of processes NOT exceeded" >> process.log
    fi

else
    echo "Invalid output choice. Please use 1 for screen or 2 for file."
fi
