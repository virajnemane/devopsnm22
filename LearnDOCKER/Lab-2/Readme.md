### Docker Installation

We are using Amazon linux-2, but below command will work for Cent-OS, RHEL, Fedora falourved linux OS.

    yum install docker
    systemctl start docker
    systemctl enable docker

### Docker with normal user

Docker deamon run by ROOT user, due to which normal user if try to use docker, it will give permission denied error. In Docker installation process, docker group get created, if we add normal user in that docker group, then normal user also will be able to use docker.

    usermod -aG docker username

### Type of docker commands

Execute docker help command and check type of commands.

    docker --help

You will find 2 types of commands, **Management command** and only **Command**
Docker categorized command so that it will be easy to remember.

Below is my way to remember command for docker. (Same you can use in kubernetes also.)

    docker <object> <action>

i.e. I want to list docker images.

    docker image ls

Now I want to list containers

    docker container ls

You can notice, **ls** is normal command which works with both management command like **image** and **container**.

### Let's start with basic docker commands and spin one container

List images stored on local server

    docker image ls

Pull image from docker repository

    docker image pull python

Create tag

    docker tag python custom_python

We can push image to our own docker account but for that you need to login and create tag with your accound id.

    docker login
    docker tag python indorenilesh/custom_python
    docker image push indorenilesh/custom_python

Check how many containers are running.

    docker container ls

Run our first container

    docker run -i -t python

**-i** for interactive

**-t** for tty terminal

You will notice, after executing command, you get landed inside the container and once you come out of it, container get died. To make container runs in background, you need to run it in deamon mode.

   docker run -itd python

**-d** for deamon mode

List container

    docker container ls

***Please note, container name, docker gives randon name to container.***

Go inside the container

    docker exec -it <container-name/id> bash

Stop the container

    docker container stop <container-id>

List container

    docker container ls

**ls** will show you only running container.
**ls -a** will show you running as well as stopped container.

    docker container ls -a

Remove stopped container

    docker container rm <container-id>

Run containers with proper name and with rm flag so that if container get stopped it should get deleted automatically.

    docker run -itd --rm --name c1 python

List container, and observe container name.

    docker container ls

Stop the container, and check container get deleted automatically.

    docker container stop <container-id>
    docker container ls -a

------

Back to [LearnDOCKER](../Readme.md)

Go to [Lab-3](../Lab-3/Readme.md)