FROM alpine

# 
RUN apk add --no-cache bash

WORKDIR /app

# copy entrypoint.sh (#!/bash; echo "Hello World!") into the container image
COPY entrypoint.sh .

# change executable permissions
RUN chmod +x entrypoint.sh

# runs the bash script on entry
ENTRYPOINT [ "/app/entrypoint.sh" ]

## 
## can build this manually by
## docker build . -t tonyod/hello-world-docker: latest
## creates a jsdads11/docker-git-hub-bash-hello-world:latest image
##
## REPOSITORY                                 TAG       IMAGE ID       CREATED         SIZE
## jsdads11/docker-git-hub-bash-hello-world   latest    9fd47cdc6ed6   5 minutes ago   11.9MB
## 
## run the image
## docker run -it jsdads11/docker-git-hub-bash-hello-world
##
##