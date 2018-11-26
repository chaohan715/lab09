!/bin/bash
i=0 
while test $i -le 15; do
  j=$(gpio read 5)
  ./waitForButtonPress.sh
  if test "$j" -eq 0
  then
    let "i=$i+1"
    ./setbits.sh $i
    sleep 0.25
  fi
done
gpio write 4 1
sleep 1
./initMode.sh

