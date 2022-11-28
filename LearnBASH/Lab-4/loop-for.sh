#!/bin/bash
for num in {1..100}
do
  #echo $num
  result=`expr $num % 2`
  if [ $result == 0 ]
  then
          echo $num
  fi
done