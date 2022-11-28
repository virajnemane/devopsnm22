## Condition handling with bash script

In this lab, we will see how we can implement condition in bash script.

There are lot of time, we need to perform some action on some condition. As per condition, action get changed. In such scenario, we can use **if..else** *condition*. It is also called **if..else** *block* or **if..else** *statement*. 

In *if..else* statement : 

- We provide one condition after **if** keyword.
- If condition is true, then it execute commands written after the **then** keyword.
- And if condition is false, then it execute command written after the **else** keyword.
- Close if..else statement with **fi** keyword, reverse of **if**.

So as per above rule, **if..else** statment will look like as below.

    if [ condition]
    then
        // some commands
    else
        // some commands
    fi

Note - We write condition in **[ ]** (square bracket) or else we can use **test** keyword.

Now with the above if..else statement we can perform only 2 task. One task if condition get true, and another task if condition get false. But sometimes we have multiple condition and with multiple action. In such scenario we can extent if..else statement with the help of **elif** keyword. Below is the example of it.

    if [ condition]
    then
        // some commands
    elif
    then
        // some commands
    elif
    then
        // some commands
    else
        // some commands
    fi

Let's write a simple script, which will take value from user, and will tell is it one digit number, two digit number, three digit number or more than 3 digit number.

Remember how to develop a script !!!

Break script in small task.
- Get number from user and print on the screen

        #!/bin/bash
        echo "Enter any number : "
        read num
        echo $num

- Check it is one digit or not, and print on the screen.

        if [ $num -lt 10 ]
        then
                echo "$num is single digit !!!!"
        else
                echo "$num is more than 1 digit !!!!"
        fi   

- Check it is two digit or not, and print on the screen.

        if [ $num -lt 10 ]
        then
                echo "$num is single digit !!!!"
        elif [[ $num -gt 9 && $num -lt 100 ]]
        then
                echo "$num is two digit !!!!"
        else
                echo "$num is more than 2 digit !!!!"
        fi   

- Check it is three digit or not, and print on the screen.

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

Refer [if-else.sh](./if-else.sh)

-----

back to [LearnBASH](../Readme.md)

go to [Lab-4](../Lab-4/Readme.md)