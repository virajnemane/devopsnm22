In this excercise we will set **getops** to enhance your bash scripting skill. This keyword will help us to take input from user in the form of parameter. 

Let's see syntax for the getops.

    while getopts 'ab:c:' opt
    do
        case $opt in
                a) APPLE=$OPTARG ;;
                B) BABY=$OPTARG ;;
                C) CAT="some_value" ;;
                \?) some_code ;;
        esac
    done

In above code :
- "a","b" and "c" are treated as parameter for the script. You can use any character.
    - There is no colon given after **a**, because that will be optional parameter.
    - To make parameter compulsory, like **b** and **c**, colon need to give after parameter.
- "APPLE", "Baby", and "CAT" are variable defined if sepcific argument get passed while executing script.
- Other part of script will not change, those are fixed **keyword**.

Before that we need to create some setup to give you a real scenario. Let's create a ec2 which will have tomcat, maven and git installed.

    cd /tmp
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm   
    yum install maven git tomcat -y
    systemctl status tomcat
    systemctl start tomcat
    systemctl status tomcat
    git clone https://gitlab.com/indorenilesh2/bform.git

In above commands, we have installed Java, Maven, and git. Also we have started tomcat service.
Tomcat deployment location will be **/var/lib/tomcat/webapps**

Now your tomcat server is ready to serve java application on **8080** port

Here is a scenario. You are going to develop a small build script which will build java application.
Script will do 
- Will ask environment (DEV,QA,UAT,PROD) with **-e** parameter and create **ENV** environment variable. 
- Will ask which build step need to perform with **-m** parameter. (**BUILD** | **DEPLOY** | **BUILDNDEPLOY**)
    - **BUILD** - will compile java code and create war/jar file.
    - **DEPLOY** - will deploy already compiled java program.
    - **BUILDNDEPLOY** - will perform above 2 task in sequence.
- Will ask version for this deployment with **-v**, but this is **optional parameter**.
- If user try to use parameter other than what we have defined, it should show message about how to use this script.

Now again remember how to write bash script....
- Get options from user and print value on the screen
- Write a function which shows how to use this script
- Call function if user provide invalid option
- Validate user input provided with option.
- perform your task.

Refer [build.sh](./build.sh)

Refer [build.env](./build.env)

-----

back to [LearnBASH](../../LearnBASH/Readme.md)