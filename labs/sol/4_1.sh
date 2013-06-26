#!/usr/bin/env bash

# Write a shell script that takes an input argument and 
# tells if it's a string or a number (Hint: try expr a + 0)

if [[ $# != 1 ]]; then
  echo "Sorry expects one argument"
  exit 1
fi

if expr $1 + 0 &> /dev/null; then
  echo "Number !"
else
  echo "String !"
fi
