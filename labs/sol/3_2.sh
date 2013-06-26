#!/usr/bin/env bash
#
# Write a shell script that takes two file names as inputs, and replaces their contents.
#

cp $1 /tmp/$$
cp $2 $1
cp /tmp/$$ $2

