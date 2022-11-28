#!/bin/bash
circle() {
    area=`echo "3.14 * $1 * $1" | bc`
    echo "Area of a Circle is $area" 
}

rectangle() {
    area=`echo "$1 * $2"|bc`
    echo "Aread of a Rectangle is $area"
}

square() {
    area=`echo "$1 * $1"|bc`
    echo "Area of a Square is $area"
}

echo "This program will calculate are of a shape."

while 1>0:
do
    echo "Enter name of a shape [Type 1 for Circle, Type 2 for Rectangle, Type 3 square] : "
    read shape

    if [ "$shape" == "q" ] || [ $shape == "Q" ]
    then
        break
    fi

    if [ $shape -eq "1" ]
    then
        echo "Enter radius of a circle : "
        read radius
        circle $radius
    elif [ $shape -eq "2" ]
    then
        echo "Enter length of a rectangle : "
        read length
        echo "Enter width of a rectangle : "
        read width
        rectangle $length $width
    elif [ $shape -eq "3" ]
    then
        echo "Enter length of a side of a square : "
        read side
        square $side
    else
        echo "This is invalid option."
    fi
done