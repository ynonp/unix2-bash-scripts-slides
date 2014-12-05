#!/usr/bin/env bash
#
# 6_1.sh
#
# Take the lc shellscript from part 4 (which lowercases a file) and modify it
# so it asks the user for a file name from all the files in the directory.
#
select fname in *
do
	mv "$fname" "$(echo $fname | tr A-Z a-z)"
done

