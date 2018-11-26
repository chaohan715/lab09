#!/bin/bash
i=$(gpio read 5)
while test $i -eq 1; do
  i=$(gpio read 5)
  echo "Wait For Button Press"
  sleep 0.25
  while test $i -eq 0; do
    i=$(gpio read 5)
    echo "Button Pressed"
    sleep 0.25
  done
done
