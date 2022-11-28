## Data manipulation - III

### List manipulation

In this section we will see how we manipulate data with list, tuple and set.

    devops_modules = ['yml','json','python','ansible']
    adv_module = ['jenkins','docker']
    print(devops_modules)
    print(adv_module)

![python-mani-list-define](/images/python-mani-list-define.png)
#### Use of index position with list.

    print(devops_modules[2])
    print(devops_modules[2:5])
    print(devops_modules[1:5:2])

![python-mani-list-index](/images/python-mani-list-index.png)

#### append() function 

Append function will help to add data at **last index position** of the list

    devops_modules.append("kubernetes") 
    print(devops_modules)

![python-mani-list-append](/images/python-mani-list-append.png)

#### insert() function

Insert function will give flexibility to add data at particular index position in list.

    devops_modules.insert(5,"terraform")
    print(devops_modules)

![python-mani-list-insert](/images/python-mani-list-insert.png)

#### extend() function

Extend function help to extend current list with some other list.

    devops_modules.extend(adv_module)
    print(devops_modules)

![python-mani-list-extend](/images/python-mani-list-extend.png)

#### remove() function

Remove function will remove element from the list.

    devops_modules.remove("kubernetes")
    print(devops_modules)

![python-mani-list-remove](/images/python-mani-list-remove.png)

#### range() function

    print(list(range(10)))
    std_no=list(range(10))
    print(std_no)

![python-mani-list-range](/images/python-mani-list-range.png)

#### Replace value in list.

    devops_modules[1]="bash"
    print(devops_modules)

![python-mani-list-assign](/images/python-mani-list-assign.png)

------

### Tuple manipulation

Lets see what we can do with tuple.

Define tuple

    t1=("Ansible","Docker","Kubernetes","Terraform")
    t2 = 'a','b','c','d','a'

![tuple-define](/images/python-mani-tuple-define.png)

Checkout position of "Docker" in the t1 tuple.

    print(t1.index("Docker"))

![tuple-index](/images/python-mani-tuple-index.png)

Checkout how many times 'a' is repeated in t2 tuple.

    print(t2.count('a'))

![tuple-count](/images/python-mani-tuple-count.png)

Remeber tuple features ????

    print(t2[1])
    t2[1]='z'
![tuple-redefine](/images/python-mani-tuple-redefine.png)

------

### Set manipulation

Let's do manipulation with set type of data.

Let's define 2 set's and print it.

    s1={"Ansible","Docker","Terraform","bash"}
    s2={"Yaml","Json","Python"}
    print(s1)
    print(s2)

![python-set-define](/images/python-mani-set-define.png)

**add()** function will add data in set. Remember feature of set's. No indexing, unordered data.

    s1.add("Jenkins")
    print(s1)

![python-set-add](/images/python-mani-set-add.png)

**update()** function will help to add some other set in current set.

    s1.update(s2)
    print(s1)

![python-set-update](/images/python-mani-set-update.png)

**pop()** function will delete any random element from set. Remember feature of set's. No indexing, unordered data.

    s1.pop()
    print(s1)

![python-set-pop](/images/python-mani-set-pop.png)

**remove()** function will remove specific element which we provide with this function.

    s1.remove("Docker")
    print(s1)

![python-set-remove](/images/python-mani-set-remove.png)

------

### Dictionary manipulation

Let's try data manipulation with dictionary type of data.

Let's define one dictionary to store cricket's career data.

    d1={"Name" : "Sachin", "Add" : "Mumbai", "Age" : 47, "Score" : 10345, "Century" : 112, "Fifty" : 245 }
    print(d1)

![python-dict-define](/images/python-mani-dict-define.png)

**get()** function will value of given key.

    print(d1.get("Age"))

![python-dict-get](/images/python-mani-dict-get.png)


Let's re-assing value to key "Age".

    print(d1.get("Age"))
    d1["Age"]=50
    print(d1.get("Age"))

![python-dict-assign](/images/python-mani-dict-assign.png)

**update()** function will add new data or replace existing one.

    d2={ "Hobby" : "Eat" }
    d1.update(d2)
    print(d1)

![python-dict-update](/images/python-mani-dict-update.png)

    d1.update({"Name":"Nilesh"})
    print(d1)

![python-dict-update-2](/images/python-mani-dict-update-2.png)

    d1.pop("Hobby")
    print(d1)

![python-dict-pop](/images/python-mani-dict-pop.png)

    print(d1.items())

![python-dict-items](/images/python-mani-dict-items.png)

    print(d1.keys())

![python-dict-key](/images/python-mani-dict-keys.png)

------

Back to [LearnPython](../Readme.md)

Go to [Lab-5](../Lab-5/Readme.md)