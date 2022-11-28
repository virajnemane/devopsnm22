#!/bin/bash
echo "Enter any number : "
read num1
echo "Enter any number : "
read num2
num3=`echo $num1 + $num2 | bc`
echo "Addition : $num3"
num4=`echo $num1 - $num2 | bc`
echo "Subsctraction : $num4"
num5=`echo $num1 \* $num2 | bc`
echo "Multiplication : $num5"
num6=`expr $num1 / $num2 | bc`
echo "Division : $num6"                