#!/usr/bin/env bash
#
# 2.sh
# Copyright (C) 2014 ynonperek <ynonperek@Ynons-MacBook-Air.local>
#
# Distributed under terms of the MIT license.
#
#
# Solution to Unix2 Labs: Part 2
#

# 2.1
mkdir 'I have 5$'

# 2.2
alias e2='find . -type f -size +2k -size -5k'

# 2.3
alias e3='find -L /tmp -user $USER'

# 2.4
alias e4='find . -mmin -240'

# 2.5
alias e5='find . -name "*$1*"'

# 2.6
alias cp='cp -i'

# 2.7
alias rm='rm -i'

# 2.8
alias e8='find . -maxdepth 1 -type -f | wc -l'

# 2.9
alias e9='find . -maxdepth 1 -type f -perm 100 | wc -l'

# 2.10
function modified_in() { ls -l | tr -s ' ' | cut -d' ' -f6,7 | grep "$1" | wc -l; }

