#!/usr/bin/env bash
#
# Write a shell script that reads a file name from the user, prints its contents and the number of lines in the file.
#

echo "Type a file name"
read FILENAME
cat $FILENAME
echo "File has $(cat $FILENAME | wc -l) lines"

