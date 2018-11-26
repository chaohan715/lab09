#!/bin/bash
z=$(gpio read 5)
until test $z -eq 0; do
  echo "Wait For Button Press"
done
