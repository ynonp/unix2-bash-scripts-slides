#!/usr/bin/env bash

# write a shell script that takes several file names as inputs, 
# and copies itself to each of the files. 
# don't forget to set execute permissions on the target files.

for TARGET; do
  cp $0 $TARGET
  chmod +x $TARGET
done

