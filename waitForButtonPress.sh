#!/bin/bash
while true; do
  i=$(gpio read 5)
  if test "$i" -eq 1
  then
    echo "Wait For Button Press"
    sleep 1
  else
    echo "Button is Pressed"
    sleep 1
  fi
done
