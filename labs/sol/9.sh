#!/usr/bin/env bash
#
# 9_1.sh
# Copyright (C) 2014 ynonperek <ynonperek@Ynons-MacBook-Air.local>
#
# Distributed under terms of the MIT license.
#

# Add a blank line after each line of input
# awk '{ printf("%s\n\n", $0) }' /etc/shells

# Change an existing file, so each line should start with a '> '
# cp /etc/shells .
# sed -i.old 's/^/>/' shells

# Write a shell script that takes a file name as input and performs:
# 	If a line starts with # , replace each character with a -
# 	For all other lines, replace each character with a .
# sed '/^[^#]/s/././g; /^#/s/./-/g' /etc/shells

# Replace the first and last words in a line
# awk 'NF>1 { t=$1; $1=$NF; $NF=t } { print $0 }'


