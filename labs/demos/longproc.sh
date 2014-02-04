#!/usr/bin/env bash
#
# longproc.sh
# Copyright (C) 2014 ynonperek <ynonperek@Ynons-MacBook-Air.local>
#
# Distributed under terms of the MIT license.
#

(sleep 60; echo bye > talk) &
TOKILL=$!

while read LINE < talk
do
  if [[ $LINE == "bye" ]]; then
    kill -9 $TOKILL
    exit 1
  fi
done

