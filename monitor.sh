#!/bin/sh
USE=`df -H | grep -o [0-9]*% | grep -o '[0-9]\+'`
FLAG=0
t=($USE)
i=${t[0]}

while true
do 
  if (( $i > 30 -a $FLAG -eq 0 )) 
  then 
    docker pause contaner-youtube 
    echo 'docker pause contaner-youtube'
    $FLAG=1
  fi 

  if (( $i < 30 -a $FLAG -eq 1 )) 
  then 
    docker unpause contaner-youtube 
    echo 'docker unpause contaner-youtube'
    $FLAG=0
  fi 

  sleep 60s
done



