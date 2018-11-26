#!/bin/bash
z=0
for i in 0 1 2 3 4 ; do
  gpio mode $z out
  gpio write $z 0
done

gpio mode 5 in
gpio mode 5 up
