#!/bin/bash

# Directory containing the data files
DATA_DIR="/app/data"

# Number of days to keep the data files
DAYS_TO_KEEP=3

# Find all directories in the data directory and loop through them
for dir in "$DATA_DIR"/*/; do
  # Get the timestamp from the directory name
  timestamp=$(basename "$dir")
  
  # Calculate the number of days between the timestamp and today
  days=$(( ( $(date +%s) - $(date -d "$timestamp" +%s) ) / 86400 ))
  
  # If the data is older than the specified number of days, delete the directory
  if [ "$days" -gt "$DAYS_TO_KEEP" ]; then
    rm -rf "$dir"
  fi
done
