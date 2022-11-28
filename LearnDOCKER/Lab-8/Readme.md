## Resource allocation in Docker

By default, a container has no resource constraints and can use as much of a given resource as the host’s kernel scheduler allows. Docker provides ways to control how much memory, or CPU a container can use, setting runtime configuration flags of the docker run command.

We can restrict rosources for the container by defining a limit while creating a container.

- --memory or -m

    The maximum amount of memory the container can use. 
    If you set this option, the minimum allowed value is 6m (6 megabyte).

- --memory-swap 

    a modifier flag that only has meaning if --memory is also set. 
    Using swap allows the container to write excess memory requirements to disk when the container has exhausted all the RAM that is available to it. 
    There is a performance penalty for applications that swap memory to disk often.
    If --memory-swap is set to a positive integer, then both --memory and --memory-swap must be set. 
    --memory-swap represents the total amount of memory and swap that can be used, and --memory controls 
    the amount used by non-swap memory. So if --memory="300m" and --memory-swap="1g", the container 
    can use 300m of memory and 700m (1g - 300m) swap.

- --cpus

    Specify how much of the available CPU resources a container can use. 
    For instance, if the host machine has two CPUs and you set --cpus="1.5", the container is guaranteed at most one and a half of the CPUs. 
    This is the equivalent of setting --cpu-period="100000" and --cpu-quota="150000". 

Let's run container without resource restriction

    docker run -itd --rm --name test nginx

Check memory and cpu resource

    docker inspect container test |egrep 'NanoCpus|Memory'

Delete container

    docker stop test

Now run container with resource limitation

    docker run -itd --rm --name test --memory="300m" --cpus=".2" nginx

Check memory and cpu resource
    
    docker inspect container test |egrep 'NanoCpus|Memory'

Delete container
    
    docker stop test

------

Think and discuss - What will happen in worst case if we don't allocate any resource to containier? 

------

Back to [LearnDOCKER](../Readme.md)

Go to [Lab-9](../Lab-9/Readme.md)