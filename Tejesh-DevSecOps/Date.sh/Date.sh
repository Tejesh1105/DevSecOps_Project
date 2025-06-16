#!/bin/bash
# Script to print the current date using a for loop

# Loop to run 10 times
for i in {1..10}
do
  # Print the current date using the `date` command
  # `awk` is used to format the output by printing the first four fields (e.g., day, month, date, and time)
  date | awk -F " " '{print $1, $2, $3, $4}'

  # Pause for 1 second between iterations
  sleep 1
done
 
