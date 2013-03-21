#!/usr/bin/env bash
# Write a safedel script. The script takes a file name as command line input, 
# and moves that file to a ~/TRASH directory instead of deleting it.

[[ -d ~/.TRASH ]] || mkdir ~/.TRASH

find ~/.TRASH -mtime +2 -exec rm {} \;

mv $1 ~/.TRASH

