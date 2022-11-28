## Loops in python

### FOR loop
In this lab we will see **for** loop in python. 

Sometimes we need to perform particular task on different object, **for** loop will help in this.

Let's check out syntax for **for** loop

    for VARIABLE in [ITERABLE-DATA]:
        // body of for loop

Most important thing while running **for** loop is require iterable data. Iterable data means it has more than 1 data sets.

Let's see example to understand it.

    for num in  range(1,101):
        print(num)

In above example we are trying to print 1 to 100 number. Here ....
- Printing is repeatative task, due to which we used **for** loop. 
- We used range function to provide 1 to 100 number. Remember for loop require iterable data.
- Instead of range function I can provide data like [1,2,3,4,5,......100] but typing number manually to 100 is not smart work.
- Indentation is important, it indicate that it is part of **for** loop.

We can enhance loop in python with the help of 2 keywords.

- **continue** - This keyword help to continue loop but to skip current cycle.
- **break** - This keyword help to break the loop and come out of it.

Let's see example.

We will continue above example only where we are printing 1 to 100 number.
I want to skip 10 number and want to break loop at 78 number.

    for num in  range(1,101):
        if [ num == 10 ]:
            continue
        elif [ num == 78 ]:
            break
        else:
            print(num)

Above code will print number from 1 to 9, will skip 10 number, will continue from 11 to 77.

Now lets test yourself.

Write a python script, which will 
- Take 1 to 100 number
- Create 2 list named **evennum** and **oddnum**
- Print both list
- **evennum** list should have all even number fall between 1 to 100.
- **oddnum** list should have all odd number fall between 1 to 100.

Refer [even-odd.py](./even-odd.py)

------

Back to [LearnPython](../Readme.md)

Go to [Lab-7](../Lab-7/Readme.md)