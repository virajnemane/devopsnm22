

# Bash - bourne shell
Bash is a Unix shell and command language written by Brian Fox for the GNU Project as a free software replacement for the Bourne shell. First released in 1989, it has been used as the default login shell for most Linux distributions.

## Let's take a baby steps.

### Types of shell
- bash
- csh
- ksh
- tcsh 
- .... and many more but bash is most famous one.

Note - We are doing bash scripting so obiviously we are doing this on linux system.

### shebang

In bash scripting, very first line you will see something like **#!/bin/bash** This know as shebang.

Basically shebang tells operating system, which interpreter should use to run this script. Off course what we write inside script, computer doesn't understand. Computer understand only 0 and 1 (binary) language. So this interpreter, in our case **/bin/bash**, will interpret our script to 0 and 1 (binary) language.


-----

### echo 

In programming/scripting world, very first program/script always be written to print **"Hello World !!"** on the screen, which really bring a happy smile, who does this very first time.

In linux, we have **echo** command which just print message on the screen. So lets try it.

Execute below command on terminal.

    echo "Hello World"

Now try to print **My name is FNAME LNAME**


------

### variable

Defining variable is very basic thing in scripting/programming. In computer programming, a variable is an abstract storage location paired with an associated symbolic name, which contains some known or unknown quantity of information referred to as a value; or in simpler terms, a variable is a container for a particular set of bits or type of data.


In simple language, when you define variable, computer create one pointer which point to memory address of the computer, where it stores value defined with variable.

i.e.
    name="Nilesh"

In above example **name** is variable name and **Nilesh** is value of variable **name**. But computer assign one memory address to variable name, in our case **name** and on that address it store value of variable, in our case **Nilesh**.

![bash-variable-memory-arch](/images/bash-variable-memory-arch.PNG)

The name of a variable can contain only letters (a to z or A to Z), numbers ( 0 to 9) or the underscore character ( _).

Now let's define above variable.
    
    name="Nilesh"

Lets print value of variable on screen. To print value of variable we need to use **$** sign before variable name.
    
    echo $name

Now lets try to change value of variable and print on the screen.
    
    name="DevOps"
    echo $name

### Types of variable

#### There are types variable on the basis of it's scope.
 
- Environment Variable - This variable will exist till the time user is logged in. These variable define at system level.

- Shell Variable - This variable will exist till the time shell is alive. These variable define inside shell script, once script is over, variable will unset.

- Local Variable - This variable will exist till the time it's object alive. These variable also define in shell script, but inside a function, object of function die, variable will unset, although script is running.

------

### Get input from user

In linux, we have command to take input from user and then save it in variable. After executing below command it gives blank line to provide value to the variable and press enter.

    read name   

Now lets try to print value of variable **name**

    echo $name

------

### Create a bash script

Now by using above command we can create a simple bash script. Create **hello.sh** file with below content.

    #!/bin/bash
    echo "My name is Nilesh Indore"
    echo "What is your name?"
    read name
    echo "Nice to meet you $name."

Note - Bash script has **.sh** extention. We can save file without **.sh** extention still it will work, but it is good practice becuase it help to recognise it.

Now to execute bash script, current user should have execute permission. You can execute below command to give execute permission.

Note - You should be root user to execute below command.

    chmod u+x hello.sh

Now you can execute bash script hello.sh 
    
    ./hello.sh

*Bash scripting is nothing but a bunch of command written in a file.*

**Great !!! Awesome !!! You done it !!! Isn't it very easy !!!!**

--------

There are different ways to execute bash script.
#### You don't have execute permission, but still want to run bash script.

    sh -x hello.sh

#### Your bash script is not working as expected, in this scenario you can use this style.

    sh -xv hello.sh


#### Another way to troubleshoot your script. You can insert **set -x** at 2nd line of the script. (First line always be shebang). i.e.

    #!/bin/bash
    set -x

#### You can execue script if it has executable permission by calling its full path.

    /root/hello.sh

-------

### Note - There is no any data type in bash script like other scripting language have.

back to [LearnBASH](../Readme.md)

go to [Lab-2](../Lab-2/Readme.md)