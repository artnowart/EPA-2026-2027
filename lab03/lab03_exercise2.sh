
#!/bin/bash

# Exercise 2
# This script checks whether the number of running  processes
# is greater than the number  supplied by the user

# Get the maximum number 
# from the command-line argument 
MAX_PROCESSES=$1

# Count the number of currently running processes
CURRENT_PROCESSES=$(ps -e --no-headers | wc -l)

# Add the current date and time to the log file.
date >> process.log
# Compare the current number of processes
# with the maximum supplied by the  user
if [ "$CURRENT_PROCESSES" -gt "$MAX_PROCESSES" ]
then
    echo "Maximum number of processes exceeded" >> process.log
else
    echo "The maximum number of processes NOT exceeded" >> process.log
fi
