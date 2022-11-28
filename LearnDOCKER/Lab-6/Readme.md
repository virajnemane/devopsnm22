## Volume in Docker

In this exercise we will see how we can use data from one container to another with the help of volume.

We have declared particular path as a volume in our application Dockerfile. Check [Dockerfile](./Lab/Dockerfile)
Build our application docker image and run a container.

    docker image build -t app:volume2 .
    docker container run -itd --name app --rm --net flaskNet -p 5000:5000 app:volume2

Now go inside container and check path which is declare as volume.

    docker exec -it app sh
    ls -l /     
    cd /app/public
    ls      
    cat index.py

Now lets redis container.

    docker container run -itd --name redis --rm --net flaskNet -p 6379:6379 redis

Login in redis container and check /app/public is exist or not.

    docker exec -it redis bash
    ls -l / 
    cd /app

You will find /app itself is not available in redis container.
Now stop redis container and again start it with volume declared in app container.

    docker container stop redis
    docker container run -itd --name redis --rm --net flaskNet -p 6379:6379 --volumes-from app redis

Now here, again we used new parameter **--volume-from**, parameter name itself is self explainatory.

Let's login in redis container and check /app and create one file in /app/public

    docker exec -it redis bash
    ls -l /     
    cd /app/public
    ls
    touch test

Now login in app container and check /app/publish
    docker exec -it app sh
    ls -l /     
    cd /app/public
    ls      
    
You will find file created in redis container is also available in app container.

------

Back to [LearnDOCKER](../Readme.md)

Go to [Lab-7](../Lab-7/Readme.md)