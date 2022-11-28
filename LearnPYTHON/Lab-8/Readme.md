## Function in python

In this lab we will see **function** loop in python. 

Lot of time we need to repeat some block of code multiple times. Problem with this scenario is
- Number of lines get increase.
- More lines, more complication
- If code need any change, you need to change at multiple location
- Difficult to understand code to new person.

We can come over this problem by defining function in Python. Funciton is nothing but a block of code, which you can write a once, but can be called any number of times.

Let's check out syntax for **function** 

    def FUNCTIONNAME():
        // body of FUNCTION

But sometimes we need to define function with some parameter, for such situation....

    def FUNCTIONNAME(para1, para2):
        // body of FUNCTION

Let's see example to understand it.

    def add(num1,num2):
         num3=num1 + num2
         print(num3)

In above example we have 
- Defined **add** function
- It require 2 parameter, **num1** and **num2**
- After indentation, body of function start.

Now most important thing, we have just defined **function**. Only defining function is not enough. If you copy above code, save file and run it, it is not going to print anything.

After defining a function we need to call it, to execute function like this....

    add(2,3)

It means there are two steps....
- Defining a function
- Calling a function.

By summerizing this, your code will look like this.

    def add(num1,num2):
         num3=num1 + num2
         print(num3)

    add(2,3)

Above code should print 5 as output.

In practicle life, if we are developing any application, not a single script, then we write a function in seperate file, and we call it in another file.

Let's see how we can do it.

Create fun.py with below code.

    def add(num1,num2):
         num3=num1 + num2
         print(num3)

Create math-fun.py with below code.

    import fun

    fun.add(5,6)

Now, here....
- We have used **import** keyword to import fun.py code
- Note, fun.py and math-fun.py are on same path, if fun.py is in differnet path then we need to provide explicit path while using **import** keyword
- If function is defined in another file, then we need to use **DOT (.)** to reference it.

Now lets test yourself.

Write a python script, which will 
- Define add, sub, mul, div function in fun.py which will do operation as per their name and print output on the screen
- Create math-fun.py
- Ask any 2 number from user.
- call add, sub, mul, div function in math-fun.py from fun.py

Refer [fun.py](./fun.py)
Refer [math-fun.py](./math-fun.py)

------

Back to [LearnPython](../Readme.md)

Go to [Lab-9](../Lab-9/Readme.md)