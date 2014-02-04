#!/usr/bin/env bash
#
# server.sh
# Copyright (C) 2014 ynonperek <ynonperek@Ynons-MacBook-Air.local>
#
# Distributed under terms of the MIT license.
#

mkfifo talk

while read LINE < talk
do
  if [[ $LINE == "ls" ]]; then
    ls
  elif [[ $LINE == "bye" ]]; then
    exit
  fi
done

