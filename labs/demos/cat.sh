#!/usr/bin/env bash
#
# 1.sh
# Copyright (C) 2014 ynonperek <ynonperek@Ynons-MacBook-Air.local>
#
# Distributed under terms of the MIT license.
#

# Print first line over and over

if [[ ! -z $1 ]]; then
  exec < $1
fi

while read LINE
do
  echo "$LINE"
done
