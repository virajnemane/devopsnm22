## Docker compose in Docker

Docker compose is a system where we can manage multiple container together which are related to one project. It help to manage containers easily.

Docker compose has configuration file name as docker-compose.yml. If we create docker compose file with different name then you need to specify it explicitly while running docker-compose command with **-f** parameter.

Install docker-compose command

    curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose

For more information about docker-compose installation refer [here](https://docs.docker.com/compose/install/)

Let's create docker compose file to run our application. 

Create docker-compose.yml to achieve below objective.
- Create service for redis use volume for data persistant
- Create service for app which will depend upon redis
- Create volume for redis

Build required images
    
    docker-compose build

Start container with docker compose

    docker-compose up -d  
    
Note - Even if required image is not build,this command will build image first then will start containers.

Check our application by using URL http://DOCKERHOSTIP:5000

Stop container with docker compose

    docker-compose down

Note : We have not created any network, as docker-compose always create seperate network for the containers which is managed by docker-compose.

------

Back to [LearnDOCKER](../Readme.md)

Go to [Lab-8](../Lab-8/Readme.md)