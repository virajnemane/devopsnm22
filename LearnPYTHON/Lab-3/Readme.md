## Data manipulation - II

We will continue with python inbuild function which help to manipulate data in multiple ways.

#### Input function

There are lot of time situation arise to take input from user. We can achieve that with the help of **input()** function.

    fname=input()
    lname=input()
    print("Hello {} {} !!".format(fname,lname))

![input](/images/python-input-fun.png)

#### Change case

Sometimes we want data in particular case like in **lower** case or in **UPPER** case to maintain its uniformity.

i.e. Person name on Credit/Debit card.

    name=input("Enter your name : ")
    print(name.upper())

![upper-1](/images/python-upper-1.png)

Sometimes you want only first letter should be UPPER case.

i.e. First letter of City name should be UPPER case.

    city=input("Enter your city name : ")
    print(city.capitalize())

![upper-2](/images/python-upper-2.png)

#### find function

You can use **find()** function to find any character/word/string in the data. Data can be anything string, list etc... If we pass data to find function with the value which need to be searched in that data, it will print index position of that data.

i.e.

    name="Nilesh"
    print(name.find("l"))

![find-1](/images/python-find-1.png)

#### count function

In some cases, you need to check how many times particular character or word is repeated in *data*. Here count function will he useful.

    data="Python is very simple language."
    data.count("P")
    data.count("p")
    data.count("i")

![count-1](/images/python-mani-count-1.png)

#### len function

With the help of **len()** function you can know how many character are there in data.

    data="Python is very simple language."
    print(len(data))

![len-1](/images/python-mani-len-1.png)

#### strip function

Strip function by default will remove blank spaces from starting and ending of the data. But it won't remove spaces which is first character and last character of the data. If we pass starting or ending position character/words then it will stip only that part.

    data="    Python is very       simple language.    "
    print(data.strip())
    print(data.strip("Python is"))
    print(data.strip("simple language"))
    print(data.strip("simple language."))

![strip-1](/images/python-mani-strip-1.png)

------
## Operators in python

Lets do some mathamatical operations in python.

    fname="Nilesh"
    lname="Indore"
    i=10
    d=20
    print(i+d)
    print(fname+lname)
    print(i-d)
    print(d-i)
    print(d/i)
    print(int(d/i))
    print(d%i)

![python-operators-math](/images/python-operators-math.png)


We need operators to perform mathmatical operation, compare data, identify data, assign value and much more.

On the basis of their use or functionality, operators are divided into 7 catagory.

**Arithmetic operators** are used with numeric values to perform common mathematical operations

![python-operators-1](/images/python-operators-arithmetic.png)


**Assignment operators** are used to assign values to variables

![python-operators-1](/images/python-operators-assignment.png)


**Comparison operators** are used to compare two values

![python-operators-1](/images/python-operators-comparison.png)


**Logical operators** are used to combine conditional statements

![python-operators-1](/images/python-operators-logical.png)


**Identity operators** are used to compare the objects, not if they are equal, but if they are actually the same object, with the same memory location

![python-operators-1](/images/python-operators-identity.png)


**Membership operators** are used to test if a sequence is presented in an object

![python-operators-1](/images/python-operators-membership.png)


**Bitwise operators** are used to compare (binary) numbers


![python-operators-1](/images/python-operators-bitwise.png)


------

Back to [LearnPython](../Readme.md)

Go to [Lab-4](../Lab-4/Readme.md)