#!/usr/bin/env bash
# Write a shell script that takes two file names, and prints the contents of the larger one.
#

SIZE2=$( du -b $1 | tr "\t" " " | cut -f1 -d ' ' )
SIZE1=$( du -b $1 | tr "\t" " " | cut -f1 -d ' ' )
if [[ $SIZE1 -gt $SIZE2 ]]; then
  echo "--- $1 ---"
  cat $1
else
  cat $2
  echo "--- $2 ---"
fi
