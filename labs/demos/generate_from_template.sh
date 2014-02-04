#!/usr/bin/env bash
#
# n
# Copyright (C) 2014 ynonperek <ynonperek@Ynons-MacBook-Air.local>
#
# Distributed under terms of the MIT license.
#
# Create a new file from template
#
# The script assumes template folder is $HOME/templates
# and that folder should contain files named: skel.extension
# for example, the template for a .c file is named:
# $HOME/templates/skel.c
#
# The template engine also replaces special words inside
# a template file. Currently supported:
#
# %FILENAME% ===> name of the file
# %USER%     ===> current user
#
# $1 - main.c
# ~/templates/skel.c

TEMPLATES=$HOME/templates/
EXT=${1#*.}

IFS=''
while read LINE
do
  LINE=${LINE//'%FILENAME%'/$1}
  LINE=${LINE//'%USER%'/$USER}
  echo "$LINE" >> $1
done < "$TEMPLATES/skel.$EXT"

if [[ $EXT == "sh" ]]; then
  chmod +x $1
fi

[[ ! -z $EDITOR ]] && $EDITOR $1









