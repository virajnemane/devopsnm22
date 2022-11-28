## Volume in Docker

In last exercise, in things to try part, we have seen if we restart redis container, visitor number get reset and again it start from zero. It means our data is not persistent. In this scenario, we can use volume to make it persistent.

We will create one volume and will use that to make our redis database persistenent.

    docker volume ls
    docker volume create redisdata
    docker volume ls
    docker inspect redisdata

Now run our redis container with a newly created volume.

    docker container run -itd --rm --name redis --net flashnet -p 6379:6379 -v redisdata:/data redis

We have used another new parameter **-v** to mount volume on particular path. Left side of colon is the volume name and right side of colon is path inside container where volume will get mounted.

Build application docker image and run it.

    docker image build -t app:v3 .
    docker container run -itd --rm --name app --net flashnet -p 5000:5000 app:v3

Now open browser and access our application with url http://DOCKERHOSTIP:5000

Refresh page 10-15 times, it should get increase everytime. 

Now note down number, and stop redis container.

    docker container stop redis

Refresh page it will give error as redis container is down. Start redis container again, wait for a while and refresh page only once.

    docker container run -itd --rm --name redis --net flashnet -p 6379:6379 -v redisdata:/data redis

You will find visitor number started from where you left last time.

Refer complete application [here](./Lab/)

------

Question : Why we have mounted volume on /data only, why not other path?

------

Back to [LearnDOCKER](../Readme.md)

Go to [Lab-6](../Lab-6/Readme.md)