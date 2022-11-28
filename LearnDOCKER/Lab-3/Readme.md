## Run application inside container

We will see how we can run application inside container. In this execercise, we will take raw image, integrate our application in that image and will create new image which will have our application inside that image.

### Build docker image

We run container by using docker image. If we want to run our application inside container, then we need to create our cutomized docker image which containe our application.

**Dockerfile** is default configuration file to build docker image.

Below are some parameters which we are going to use to build our docker image with application.

- **FROM** 
    
    The FROM instruction initializes a new build stage and sets the Base Image for subsequent instructions.

- **RUN**
    
    The RUN instruction will execute any commands in a new layer on top of the current image and commit the results. The resulting committed image will be used for the next step in the Dockerfile.
    RUN has 2 forms
    
    - RUN somecommand

    - RUN ["executable", "param1", "param2"]

- **WORKDIR**

    The WORKDIR instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile. If the WORKDIR doesn’t exist, it will be created even if it’s not used in any subsequent Dockerfile instruction.

- **COPY**

    The COPY instruction copies new files or directories from <src> and adds them to the filesystem of the container at the path <dest>.

- **CMD**

    There can only be one CMD instruction in a Dockerfile. If you list more than one CMD then only the last CMD will take effect.
    The CMD instruction has three forms:

    - CMD ["executable","param1","param2"]
    
    - CMD ["param1","param2"]
    
    - CMD command param1 param2

- **ENTRYPOINT**

    An ENTRYPOINT allows you to configure a container that will run as an executable.
    ENTRYPOINT has two forms:
    
    - ENTRYPOINT ["executable", "param1", "param2"]
    
    - ENTRYPOINT command param1 param2

For more information on Dockerfile parameters refer [here](https://docs.docker.com/engine/reference/builder/)

------

Now using above commands / syntax we will build docker image with our application.

We have python flask application which will show number of visitors visit our site. Below are files inside Lab directory are related to application.
- app.py
- requirements.txt

Refer final [Dockerfile](./Lab/Dockerfile)

Let's build image now.

    docker image build -t app:v1 .

Run a container from new image.

    docker container run -itd --name app --rm -p 5000:5000 app:v1

Now note down we have used new parameter **-p** for *port*. As our application is running on 5000, we need to expose this port to access our application. Port mentioned left site of colon is for Docker host and port mentioned in the right side is of actual application port running inside a container. It means we can mention any port at the left side of colon but the condition is that port should available on the Docker host, but port at the right side of the colon, should be the same port on which our application is running inside a container.

In above example, if we write **-p 80:5000** then, application is running inside on port 5000, but we can access that application on port 80 on docker host.

Let's resume, now we can access our application on port 5000 on the IP of Docker host. You can execute below command to check 5000 is running or not on docker host.

    netstate -ntlp

Access application with url http://DOCKER-HOST-IP:5000

------

Question - In Dockerfile, why we have used COPY two times, very first time we can copy all the files, right?

------

Back to [LearnDOCKER](../Readme.md)

Go to [Lab-4](../Lab-4/Readme.md)