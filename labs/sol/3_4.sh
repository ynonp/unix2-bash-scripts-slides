#!/usr/bin/env bash
#
# Write a shell script that takes a windows file (lines end with \r\n), 
# and converts it to Unix file (lines end only with \n).
#

cat $1 | tr -d '\r'

