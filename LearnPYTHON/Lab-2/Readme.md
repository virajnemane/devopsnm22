## Data manipulation - I

In this exercise we will see some python inbuild function to manipulate data.

We saw different types of data in [Lab-1](../Lab-1/Readme.md). As per the datatypes, we use different functions to manipulate data. Let's checkout one by one.

#### String format
Sometimes we need to print statements which include some dynamic values(variable value), in such situation. It become difficult to print that statement.

i.e.

    car="smart car"
    action="buy"
    time=5
    location="showroom"
    print("He went crazy after seeing " + car + " and tring to " + action + " it at " + time + " pm in " + location + ".")

![output](/images/python-string-format.PNG)

By looking at above example, now you will come to know to write statement with variable is little bit complicated. To make it simple, python have **format()** function.

While using **format()** function, we need to put **{} open and close curly braces** instead of variable name, and at the end of the sentence, **attach format function** with variable name or actual value.

    car="smart car"
    action="buy"
    time=5
    location="showroom"
    print("He went crazy after seeing {} and tring to {} it at {} pm in {}.".format("car","action",time,"location"))

![output](/images/python-string-format-1.PNG)

There is another way to write same sentence where we use **(%) percent sign**. But along with **(%) pecent sign** we need to give what type of data variable holds. 

    print("He went crazy after seeing %s and tring to %s her at %i pm in %s." % ("beautiful girl","flirt",5,"in my office"))

![output](/images/python-string-format-2.PNG)

#### Use of index

You can print or access particular character or range of character from a word or sentence by using the index position. By default datatype, any datatype **(except set datatype)** assign a index position to each character/byte and index position start from **(0) ZERO**. We can pass 3 parameter, starting position, ending position and steps.

Lets try indexing with string.

    name="Nilesh"
    print(name[3])

![output](/images/python-string-index-2.PNG)

    remark="Class is a place to learn"
    print(remark[5:10])

![output](/images/python-string-index-1.PNG)

    print(remark[3:15:3])

![output](/images/python-string-index-3.PNG)

    print(remark[-1])

![output](/images/python-string-index-4.PNG)

You can use index with list also. Lets try that too.

    devops_modules = ['yml','json','python','ansible']
    print(devops_modules[2])
    print(devops_modules[2:5])
    print(devops_modules[1:5:2])

![output](/images/python-list-index-1.PNG)

Now what if you want to find out index number of particular character in string or item from the list. You can achieve that with the help of **index()** function.

Lets try it.

    name="Nilesh"
    name.index("h)

![output](/images/python-index-fun-1.PNG)

What if we provide such value which is not present in variable.

    name.index("k")

![output](/images/python-index-fun-2.PNG)

------

Back to [LearnPython](../Readme.md)

Go to [Lab-3](../Lab-3/Readme.md)