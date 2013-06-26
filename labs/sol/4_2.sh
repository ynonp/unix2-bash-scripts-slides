#!/usr/bin/env bash
#
# Write a shell script that takes 3 input arguments and prints out the largest one
#

if [[ $# != 3 ]]; then
  echo "Sorry expects 3 arguments. Bye"
  exit 1
fi

if [[ $1 -gt $2 && $2 -gt $3 ]]; then
  echo "$1 is the largest"
elif [[ $2 -gt $1 && $2 -gt $3 ]]; then
  echo "$2 is the largest"
elif [[ $3 -gt $2 && $3 -gt $1 ]]; then
  echo "$3 is the largest"
else
  echo "No number is the largest"
fi
