#!/bin/bash
i=$1
bit1=$(($i & 1))
bit2=$((($i>>1) & 1))
bit3=$((($i>>2) & 1))
bit4=$((($i>>3) & 1))

if test "$bit1" -eq 1
then
  gpio write 0 1
else
  gpio write 0 0
fi

if test "$bit2" -eq 1
then
  gpio write 1 1
else
  gpio write 1 0
fi

if test "$bit3" -eq 1
then
  gpio write 2 1
else
  gpio write 2 0
fi

if test "$bit4" -eq 1
then
  gpio write 3 1
else
  gpio write 3 0
fi
