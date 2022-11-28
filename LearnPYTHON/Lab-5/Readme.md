## Condition in python

### if..else statement

In this lab we will see how we can play around conditions in python.

Sometimes we come across some situation where we need to test some condition and as per the condition result we need to perform the task.

Let's see syntax for if..else statement.

    if [CONDITION]:
        //code
    else:
        //code

Sometimes we need to test multiple condition in such situcation we can extend **if** statement with **elif**.

    if [CONDITION]:
        //code
    elif [CONDITION]:
        //code
    else:
        //code

Let's see one example.

We will take a number between 0 to 9, and will check is it greater than 5 or less than 5 or it is 5.

    i=int(input("Enter any number between 1 to 9 \n"))
    if i<5:
        print("You have entered value less than 5.")

    if i>5:
        print("You have entered greater than 5.")

    if i==5:
        print("You have entered 5.")

In above example we tried multiple **if** statement, which we can achieve with the help of **elif** also.

    i=int(input("Enter any number between 1 to 9 \n"))
    if i<5:
        print("You have entered value less than 5.")
    elif i>5:
        print("You have entered greater than 5.")
    elif i==5:
        print("You have entered 5.")
    else:
        print("Not a single digit number !!")

Above code is more efficient and more understandable compare to previous one. In above code, we have else statement as well to cover a situation where user provide multi digit number.

Now try to write a python script, which will
- take a number from user
- if it is single digit, print it on the screen.
- if it is double digit, print it on the screen.
- if it is three digit, print it on the screen.
- if it is not single,double, three digit, then print "It is more than 3 digit number".

------

Back to [LearnPython](../Readme.md)

Go to [Lab-6](../Lab-6/Readme.md)