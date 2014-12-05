#!/usr/bin/env bash

# Write a shell function called sum that returns the sum of its arguments
function sum() {
  local N
  local sum

  for N; do
    (( sum += N ))
  done
  return $sum
}

# Write a shell function called countExecutables() that takes 
# a directory name as parameter and returns the 
# number of executable files in that directory.
function countExecutables() {
  return $(find $1 -type f -perm -u+x | wc -l)
}

# Write a shell function that prints out the multiplication table. 
# Function should take a number `n` and print a table sized `n*n`.
function multable() {
  local i j mul
  for (( i=0; i <=$1; i++ )); do
    for (( j=0; j <=$1; j++ )); do
      (( mul = $i * $j ))
      if [[ $i = 0 && $j != 0 ]]; then
        printf "%d\t" $j
      elif [[ $j = 0 && $i != 0 ]]; then
        printf "%d\t" $i
      elif [[ $j = 0 && $i = 0 ]]; then
        printf " \t"
      else
        printf "%d\t" $mul
      fi
    done
    echo
  done
}



sum 10 20 30
echo $?

countExecutables .
echo $?

multable 5
