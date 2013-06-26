#!/usr/bin/env bash

# Write a shell script that reads a file and prints its content 
# double-spaced (adding a blank line after each line)

while read LINE; do
  echo $LINE
  echo
done < $1

