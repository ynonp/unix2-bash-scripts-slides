#!/usr/bin/env bash

IFS=''

if [[ $# == 1 ]]; then
  exec < $1
fi

while read LINE; do
  LINES[$i]=$LINE
  (( i += 1))
done

for (( i=${#LINES[*]}-1; i>=0; i-= 1 )); do
  echo ${LINES[$i]}
done
