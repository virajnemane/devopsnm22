## Entrypoint vs CMD

The last line in Dockerfile is always important as it decide what will run inside container. If that process get failed, container will get killed by docker deamon.

We already saw that we can either use ENTRYPOINT or CMD to execute binary in container as primary process. But what is difference between ENTRYPOINT and CMD and in which situation what we need to use it.

Create Dockerfile with below lines

    FROM ubuntu
    CMD ping -c3 localhost

Build image and run container

    docker image build -t cping .
    docker run cping

Now run container with parameter.

    docker run cping google.com
    docker run cping hostname

Above execercise indicate that we can replace argument of CMD by providing as parameter.
Please note docker command failed with **hostname** parameter.

Now let's do same thing with ENTRYPOINT. Create Dockerfile with below lines

    FROM ubuntu
    ENTRYPOINT ping -c3 localhost

Build image and run container

    docker image build -t cping .
    docker run cping

Now run container with parameter.

    docker run cping google.com
    docker run cping hostname
    docker run --entrypoint hostname cping

Now here entrypoint behave differently in last command compare to CMD. It indicate that in case of CMD we can not replace actual command but we can replace it's argument or parameter. In case of EMRYPOINT we can replace entire primary process.

We can use this terminology for our advantage by using both.

Create Dockerfile with below lines

    FROM ubuntu
    ENTRYPOINT ["ping","-c3"]
    CMD ["localhost"]

Build image and run container

    docker image build -t cping .
    docker run cping
    docker run cping google.com

Conclusion - The ENTRYPOINT specifies a command that will always be executed when the container starts. The CMD specifies arguments that will be fed to the ENTRYPOINT.

## Some useful commands
- Recover image from running container.

If by mistake original docker image get deleted and we don't have backup, but have running container from deleted docker image, in this case we can create image from running container.

    docker commit CONTAINERNAME TAGNAME

- Copy data to container

Sometimes we need to copy data from DOCKERHOST to running container.

    docker cp LOCAL-DATA-PATH CONTAINERNAME:CONTAINER-DATA-PATH

- Docker events

Sometimes to troubleshoot issue we need to check events happening inside docker.

    docker system events

- Cleanup

Lot of times we need to do some cleanup as most of time lot of docker object was ideal.
i.e. lot of times, images are downloaded but they are not getting used by any container.

    docker system prune

- Disk usage by docker

    docker system df

- Use of filter to get specific object

    docker ps --filter "name=calcIndex"
    
    docker ps --filter volume=/data

- Information of docker

    docker info

- Debug mode for more information

    docker -D info

------

Back to [LearnDOCKER](../Readme.md)

Go to [Lab-9](../Lab-10/Readme.md)