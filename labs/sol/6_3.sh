#!/usr/bin/env bash
#
# 6_2.sh
#
# Write a shell script that asks the user for a file extension (select from all
# existing extensions in the directory) and prints how many files in the
# directory have that extension

while getopts 'e:' opt
do
	if [[ $opt == 'e' ]]
	then
		ext=$OPTARG
		find . -name "*.$ext" | wc -l
		exit
	fi
done

exts=$(find . -name '*.?*' | cut -d'.' -f3 | sort -u)
select ext in $exts
do
	find . -name "*.$ext" | wc -l
	break
done





