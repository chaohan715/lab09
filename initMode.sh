#!/bin/bash
z=0
for i in 0 1 2 3 4 5; do
  if test "$z" -eq 5
  then
    gpio mode $z in
    gpio mode $z up
  else
    gpio mode $z out
    gpio write $z 0
  fi
  let "z=$z+1"
done
