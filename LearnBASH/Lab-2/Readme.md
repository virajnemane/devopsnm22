In this exercise, we will see some mathamatical operation.

Lets create a script to take 2 numbers from user, and show addition, substraction, multiple and division.

When I say this, lot of people immediately start to write a code for all the operation. But correct way to develop any script is to write a script in parts.
Lets break this script in small steps.
#### Take 2 number from user and print on the screen.
   
    #!/bin/bash
    echo "Enter any number : "
    read num1
    echo "Enter any number : "
    read num2
    echo $num1
    echo $num2

#### Add number accepted from user and save result in a variable, and print that variable value on the screen.

    num3=`expr $num1 + $num2`
    echo $num3

OR

    num3=`echo $num1 + $num2 | bc`
    echo $num3

#### Substract first number with second number accepted from user and save result in a variable, and print that variable value on the screen.

    num4=`expr $num1 - $num2`
    echo $num4
OR

    num4=`echo $num1 - $num2 | bc`
    echo $num4

#### Multiply first number with second number accepted from user and save result in a variable, and print that variable value on the screen.

    num5=`expr $num1 \* $num2`
    echo $num5

OR

    num5=`echo $num1 \* $num2 | bc`
    echo $num5

#### Divide first number with second number accepted from user and save result in a variable, and print that variable value on the screen.

    num6=`expr $num1 / $num2`
    echo $num6

OR

    num6=`expr $num1 / $num2 | bc`
    echo $num6

Refer [math.sh](./math.sh)

-----

- You can use **#** to comment in bash script.
- **`** (backtick) is used to execute linux command and use it's output as a value.
- **expr** is linux command to evaluate an expression in bash. 
- **\\** (forward slash) is used to ignore next character.
- Linux have **bc** command to perform mathamatical operation.
- In Linux, "|" this called as pipe and it is used to pass previous command output as input to next command.
------
back to [LearnBASH](../Readme.md)

go to [Lab-3](../Lab-3/Readme.md)