#!/usr/bin/env bash
#
# Write a shell script that takes a file name and a new name, and changes all
# files with the given name (recursively in all folders) to the new name. The
# script should accept a boolean switch -n . When running with -n it should
# just print all the mv operations without running them.
#

while getopts 'n' opt
do
	PREFIX=echo
done

shift $(( OPTIND - 1 ))

for file in $(find . -name "$1")
do
	$PREFIX mv "$file" "${file%$1}$2"
done

