#!/usr/bin/env bash
#
# Write a shell script that takes input as command line 
# arguments and prints them out backwards.
#

for (( i=$#; i > 0 ; i-- )); do
  echo ${!i}
done
