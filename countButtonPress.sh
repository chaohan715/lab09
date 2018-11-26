#!/bin/bash
i=0
while test $i -eq 15; do
  j=0
  while test $j -eq 0; do
    k=$(gpio read 5)
    if test "$k" -eq 1
    then
      echo "Wait For Button Press"
    else
      echo "Button Pressed"
      j=1
    fi
  done
  let "i=$i+1"
  ./setbits.sh $i
  sleep 0.25
done
gpio write 4 1
sleep 1
./initMode.sh
