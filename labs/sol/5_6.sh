#!/usr/bin/env bash

# Write a shell script that takes a two file extensions as
# input (call them ext1 and ext2),
# and renames all files ending with ext1 to end with ext2.

for FILE in *.$1; do
  mv "${FILE}" "${FILE%.$1}.$2"
done
