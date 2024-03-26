# Docker

* Docker is a platform that allows you to build, test, and deploy applications quickly. 
* Docker packages software into standardized units called containers that have everything the software needs to run including libraries, system tools, code, and runtime.
* Using Docker, you can quickly deploy and scale applications into any environment.


**Docker Engine:**
- The software responsible for running and managing Docker containers on the host system.

**Dockerfile**
- A text file that contains instructions for building a Docker image. It specifies the base image, dependencies, environment variables, and commands needed to set up the application.

***Dockerfile Instructions:***

`FROM`: Specifies the base image for the new image.

`RUN`: Executes commands inside the image during the build process.

`COPY / ADD`: Copies files or directories from the host into the image.

`WORKDIR`: Sets the working directory for subsequent instructions.

`EXPOSE`: Informs Docker that the container listens on specific network ports at runtime.

`CMD / ENTRYPOINT`: Specifies the command to run when the container starts.


**Docker Compose:**
- Docker Compose is a tool for defining and running multi-container Docker applications.
- It uses a YAML file to configure the application's services, networks, and volumes.
- With Docker Compose, you can define complex multi-container environments and manage them as a single unit.

**Docker Registry:** [DockerHub](https://hub.docker.com/)
- A storage and distribution system for Docker images. It can be either public or private and is used to store and share Docker images within an organization or with external users.


*******
**Basic Commands:**

`docker build <path>`: Builds an image from a Dockerfile.

```bash
docker build -t python-demo -f python.dockerfile .
```

`docker run <image>`: Runs a command in a new container.

```bash
docker run -it -p 5000:5000 python-demo:latest
```

`docker pull <image>`: Pulls an image or a repository from a registry.

```bash
docker pull python:3.10
```

`docker push <image>`: Pushes an image or a repository to a registry.

```bash
docker push docker.io/library/python/demo:latest
```
`docker ps [OPTIONS]`: Lists all running containers.

```bash
docker ps -a
```

`docker images`: Lists all available images.

```bash
docker images
```

`docker stop <container>`: Stops a running container.

```bash
docker stop python-demo
```

`docker rm <container>`: Removes a container.

```bash
docker rm python-demo
```

`docker rmi <image>`: Removes an image.

```bash
docker rmi python-demo:latest
```

`docker exec -it <container> <command>`: Execute a command in a running container.


```bash
docker exec -it python-demo bash
```

`docker inspect <container>`: To retrieve information about Docker objects.

```bash
docker inspect python-demo
```   
