#!/usr/bin/env bash

# Write a shell script that reads a file and prints out only 
# the longest line

MAX=""
MAXLEN=0

while read LINE; do
  if [[ ${#LINE} -gt $MAXLEN ]]; then
    MAX=$LINE
    MAXLEN=${#LINE}
  fi
done < $1

echo $MAX
