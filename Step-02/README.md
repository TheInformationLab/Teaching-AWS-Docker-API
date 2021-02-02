# Step 1: Create a public folder and add index.html

mkdir public

touch index.html (echo for Windows)

# Step 2: Add basic content into website

We have this amazing website that gives us random facts when you type in a number. And we want to deploy this with Docker. Let's first look how we can create an image of it and run it locally.

Here we can also put our embedded Tableau dashboard if you want.

# Step 3: Create Dockerfile

Using the nginx Docker Image

```
FROM nginx
# copy the index file over to the location on the nginx folder
COPY index.html /usr/share/nginx/html
```

# Step 4: Create Docker Container

From within the folder that contains the Dockerfile

```
docker build -t test .
```

test is the name of the container

# Step 5: Container is created, we can now test it locally

Run container /w image

Last test is which container to run

8080 is local port, 80 is port on nginx

```
docker run --name myappname  -d -p 8080:80 test
```

Go to localhost 80 to see it

See running containers:

```
docker ps
```

Stop the container:

```
docker stop nameofcontainer
```
