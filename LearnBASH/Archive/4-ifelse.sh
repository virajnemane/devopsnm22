#!/bin/bash
echo "Enter any number : "
read num

if [ $num -lt 10 ]
then
        echo "NUM is single digit !!!!"
elif [[ $num -gt 9 && $num -lt 100 ]]
then
        echo "NUM is two digit !!!!"
elif [[ $num -gt 99 && $num -lt 1000 ]]
then
        echo "NUM is 3 digit !!!!"
else
        echo "NUM is more than 3 digit !!!!"
fi
