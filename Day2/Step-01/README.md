# Step 1: Install Docker for Windows or MacOS

https://docs.docker.com/docker-for-windows/install/

# Step 2: Hello World Example

Docker allows us to run applications inside containers. Running an application inside a container takes a single command: **docker run** or **docker container run**

# Step 3: We need an image to run

We need to have a disk image to make the virtualization work. The disk image represents the system we're running on and they are the basis of containers. **Docker registry** is a registry of already existing images that we can use to run and create containerized applications. -- Docker Hub: https://hub.docker.com

**What Is a Container, and How Is It Different from an Image?**
Image(s) are used to create containers, and a container is where the live application runs from. A container can be run, stopped, or deleted.

# Step 4: Run our first container

```
docker run alpine /bin/echo 'Helllooo'
```

What did this do?

- Created a container using alpine (Linux distro) if you didn't have it locally it pulls it down
- Echo'ed hello world to the console
- Shuts down the container

Why is this so cool?

- It's super fast, caches if the image is already local
- Shuts itself down when not needed
- You can easily scale up and down
