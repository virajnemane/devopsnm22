#!/bin/bash
while 1>0:
do
    echo "Press any key !!!"
    read CHAR
    if [[ $CHAR == 'c' || $CHAR == 'C' ]]
    then
            echo "Hey....you pressed 'c' key"
            continue
    elif [[ $CHAR == 'q' || $CHAR == 'Q' ]]
    then
            break
    fi
done