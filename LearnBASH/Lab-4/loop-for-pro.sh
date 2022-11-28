#!/bin/bash
for num in {1..100}
do
  #echo $num
  result=`expr $num % 2`
  if [ $result == 0 ]
  then
          if [ $(($num % 10)) == 0 ]
                then
                        continue
                elif [ $num == 72 ]
                then
                        break
                else
                echo $num
         fi
  fi
done