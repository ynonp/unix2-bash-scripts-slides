#!/usr/bin/env bash

# Write a shell script called "wait_for_user"
# that takes a user name and checks if the user is logged in. 
# If she's not logged in, the script sleeps for 5 seconds and 
# checks again in a loop - until the user logs in.

while ! who | grep $1 &>/dev/null; do
  sleep 5
done

echo "Welcome, $1"

