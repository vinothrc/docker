# Docker

* Docker is an open-source platform for building, shipping, and running applications inside containers.
* Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and ship it all out as one package.

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

**Docker Registry:**[link](https://hub.docker.com/)
- A storage and distribution system for Docker images. It can be either public or private and is used to store and share Docker images within an organization or with external users.


*******
**Basic Commands:**

`docker run <image>`: Runs a command in a new container.

`docker build <path>`: Builds an image from a Dockerfile.

`docker pull <image>`: Pulls an image or a repository from a registry.

`docker push <image>`: Pushes an image or a repository to a registry.

`docker ps`: Lists all running containers.

`docker images`: Lists all available images.

`docker stop <container>`: Stops a running container.

`docker rm <container>`: Removes a container.

`docker rmi <image>`: Removes an image.

`docker exec -it <container> <command>`: Execute a command in a running container.


```bash
docker exec -it test1 bash
```
