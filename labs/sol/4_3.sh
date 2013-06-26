#!/usr/bin/env bash
# Write a shell script that reads a name from the user - 
# if that name is an executable program run it, otherwise print its content.

echo "Type in a file name"
read FILENAME

if [[ ! -f $FILENAME ]]; then
  echo Sorry, not a file name
  exit 1
fi

if [[ -x $FILENAME ]]; then
  if [[ $FILENAME = /* ]]; then
    $FILENAME
  else
    ./$FILENAME
  fi
else
  cat $FILENAME
fi
