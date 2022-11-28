#!/bin/bash
echo "Enter any number : "
read num

if [ $num -lt 10 ]
then
        echo "$num is single digit !!!!"
elif [[ $num -gt 9 && $num -lt 100 ]]
then
        echo "$num is two digit !!!!"
elif [[ $num -gt 99 && $num -lt 1000 ]]
then
        echo "$num is 3 digit !!!!"
else
        echo "$num is more than 3 digit !!!!"
fi