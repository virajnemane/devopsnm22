## Installation

Lets install python first in our system.

For Installation on windows system, you can refer [this document](/PrepareSystem/install-python.md)

-------
## Data types in Python

In programming, data type is an important concept. Variables can store data of different types, and different types can do different things.

Lets see what datatype we have in python.


### String
- Include **any charachter**. Can be alpha...can be numberic....can be special character.
- It's value **should be in quotes**. Quotes can be single ....can be double...depend upon you.

Let's try below things...

    name = "Nilesh"
    emp_code = "C302"
    symbol = "-->"
    essay="This is very odd to write essay on programming, but its true that there are lot of idiots who do this."
    print(name)
    print(emp_code)
    print(symbol)
    print(essay) 

But how would you come to know these variables are string datatype...?

You can use ***type()*** function.

Let's try this

    print(type(name))
    print(type(emp_code))
    print(type(symbol))
    print(type(essay))

### Integer
- Include only complete numbers. like **2, 45, 103, 205** but not 3.14 or 789.23
- It's value should **not be in quotes**.

Lets try this

    age = 30
    emp_cell_no = 7738003350
    print(age)
    print(type(age))
    print(emp_cell_no)
    print(type(emp_cell_no))    

### Float
- Include incomplete number like **3.14, 456.34**
- it's value should **not be in quotes**.

Lets try this

    height = 6.5
    weight = 63.75
    print(height)
    print(try(height))
    print(weight)
    print(type(weight))

### List
- As name indicate it is **collection of multiple values**.
- It is just like ARRAY....
- It **contain any type of data**....string...integer...float...any type...even list inside list....
- It should be inside **square bracket** "[]"

Lets try this

    list1 = ["Nilesh","Manisha","Mayura",3.14,2034]
    list2 = ["Python","Java",list1,45.56,20010]
    print(list1)
    print(type(list1))
    print(list2)
    print(type(list2))

### Tuple
- It is **same as list**, but in list you can change values if you want, in tuple **once value defined can not be changed**.
- It is defined inside **round bracket** "()" but can be defined **without round bracket also** but need to be used comma "," between 2 values/items.

Lets try this

    t1 = ("Nilesh","Mayura",34,67.12)
    t2 = 'a','b','c','d','a'
    print(t1)
    print(type(t1))
    print(t2)
    print(type(t2))

### Set
- It is also **same as list**, but it is **unordered and unindexed**. So everytime order of set is random.
- once created, you **can not change item but you can add items**.
- It prints **only unique values**, if there is any duplicate value in set it will print only once.
- It is define inside **curly braces**. "{}"

Lets try this

    s1 = {"Nilesh","Mayura","Manisha","Nirmala",45,234.78,"Arnav","Nilesh"}
    s2 = {"Ananya","Aish"}
    print(s1)
    print(type(s1))
    print(s2)
    print(type(s2))

### Disctionary
- It is also same as list, but every item is pair of **key=value**.
- It is define inside **curly braces**. "{}"
- Value can be **any datatype**.
- Key should be **in quotes**.

    result={"Marathi" : 70 , "Hindi" : 85 }
    print(result)
    print(type(result))

![python-dict-define](/images/python-dict-define.PNG)

------
### Comment in python
- single line use #
- multiline use '''

-------
#### Note
- print() function to print text on screen
- type() function to check datatype

----

Back to [LearnPython](../Readme.md)<br />
Go to [Lab-2](../Lab-2/Readme.md)