## Loops in bash script

Many times you have a task which you need to repeat **fix** number of times, but on different object each time or might be on same object. In such scenario, **for** loop technique will help in bash scripting.

For loop is a technique where you perform a specific task at a given number of times. Below is it's syntax.

    for num in 1 2 3 4
    do
        // some commands
    done

- **for** loop start with **for** keyword
- followed by **variable name**, it can be anything, combination of character, number and _ (underscore), but it should not start with number.
- followed by **in** keyword
- followed by iterable data. Iterable data means it has more than one data or you can say list of data.
- followed by **do** keyword in **next line**
- in next line you can write your code which need to execute
- close **for** loop by **done** keyword.


Let's write a bash script, which will print all even number between to 1 to 100.

Remember how to write bash script systamatically !!!!

Break a script in small task.
- Create a simple for loop
- Once for loop is working, then write your logic.

Hint-1 -> You can define range in bash script with the help of curly bracses like {1..100}. This will give 1 to 100 numbers.

Hint-2 -> You can use "man test" to help for condition check.

Refer [loop-for.sh](./loop-for.sh)

We have two more keyword which can enhance functionality of loops in bash script. 

Sometimes in loop we just want to avoid certain task/value/step/condition but want to continue loop in such scenario we can use **continue** keyword.

Similarly in loop we just want to stop loop on certain task/value/step/condition in such scenario we can use **break** keyword.

Let's implement this in above script.

- If number is divisible by 10, it should not print.
- If number is 72, stop the loop.

Refer [loop-for-pro.sh](./loop-for-pro.sh)

-----

back to [LearnBASH](../Readme.md)

go to [Lab-5](../Lab-5/Readme.md)