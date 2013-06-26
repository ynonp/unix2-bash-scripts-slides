#!/usr/bin/env bash
# Write a shell script that asks the user for a number, if the user chooses 7 - print "You Win".

echo "Pick a number"
read NUMBER

if [[ $NUMBER == 7 ]]; then
  echo "You Win !"
fi
