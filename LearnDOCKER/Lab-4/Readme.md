## Network in Docker

Docker has its own networking layer. When you install docker, it add new network interface to DOCKER HOST with default ip address as 172.17.0.1

You can execute below command to check network in docker.

    docker network ls

Basically there are 4 types of network in docker.
- bridge - This is default one. Help to communicate container with each other on single host.
- host - Use HOST actual network
- overlay - Help to communicate between multiple docker deamon
- macvlan - assign mac id to container and use it for networking.
- none - disable networking for container.

One thing is added feature in Docker network is that, it provides DNS service. It provide DNS service only if you have create network, on default subnet it doesn't provide DNS service.

We will create new network and run our application in that new network.

Create new network called **flasknet**

    docker network create flasknet
    docker network ls
    docker inspect flasknet

Inspect is command to get complete detail about any docker componenent.

Our application require cache database where it will store a number of visitors count. For that purpose we will run redis container.

    docker container run -itd --rm --name redis --net flasknet -p 6379:6379 redis

Note down here, we have used **--net** parameter to use specific network for this container.

Now build docker image for application.

    docker image build -t app:v2 .
    docker image ls

Run a container with our application.

    docker container run -itd --rm --name app --net flasknet -p 5000:5000 app:v2
    docker container ls

Lets check our application. Open url http://DOCKERHOSTIP:5000 in browser, and refresh it 10-15 times, number should get increases everytime.

Execute below command and check it's output.

    docker inspect app

------

Question - In app.py, I have not mentioned IP address of redis, then how our application come to know IP address of redis.

Things to Try 
- Stop redis container, and again start it, check visitor number.
- Perform above exercise in default network, don't use **--net** parameter while running redis and application container.
 
------

Back to [LearnDOCKER](../Readme.md)

Go to [Lab-5](../Lab-5/Readme.md)