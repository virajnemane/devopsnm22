## Loops in bash script

We have seen **for** loop in last lab. But hold on, **for** loop only get used if you know how many number of times you need to repeat the task and there is no any condition, it means if you have writtent for loop it will run. But sometimes, you come across the situation, that if something gets true then you need to perform some task endlessly. Here you can use another type of loop, which is called **while** loop.

In **while** loop, we provide a condition, if that condition become **true** then only while loop will start, and once it start, it won't stop.

Below is the syntax for **while** loop.

    while CONDITION:
    do
        // some commands
    done

By looking at above code, you can consider below points :
- **while** loop start with **while** keyword
- It require one condition, followed by **:** (colon), which indicate end of condition.
- Use **do** in next line, which indicate if given condition is true, then perform below steps.
- After **do** keyword, in next line you can write your code which need to run. Code can be multiline.
- End **while** loop with **done** keyword, which indicate while condition is over.

Let's try below simple while loop.

    #!/bin/bash
    num=0
    while 1>0:
    do
            let "num+=1"
            echo $num
    done

You can write above code with different style.

    #!/bin/bash
    num=0
    while 1>0:
    do
            num=$(($num+1))
            echo $num
    done

Above script won't stop, you need to press **Ctl + C** to stop it.

Now let's write a script, which will 
- ask user to press any key
- script will take that as input
- will check is it "c" or "C", if it is, then print "Hey....you pressed 'c' key"
- will check is it "q" or "Q", if it is, then exit from the script.

Check [loop-while.sh](./loop-while.sh)

------

Note :
#### The arithmetic expansion can be performed using the double parentheses $((...)) or with the let built-in command.

------

back to [LearnBASH](../../LearnBASH/Readme.md)

go to [Lab-6](../Lab-6/Readme.md)