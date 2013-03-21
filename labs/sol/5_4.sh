#!/usr/bin/env bash

# Write a shell script that reads a file and prints its 
# content with no blank lines.

while read LINE; do
  [[ -z $LINE ]] && continue
  echo $LINE
done < $1
