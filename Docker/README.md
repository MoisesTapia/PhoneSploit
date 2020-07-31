# Run PhoneSploit with 'Docker'

![docker](https://img.shields.io/badge/Docker-v19.03.12-blue?style=plastic&logo=docker)
![Maintainer](https://img.shields.io/badge/Maintainer-Equinockx-success?style=plastic&logo=terraform)

## Requeriments

- [X] Docker

## Usage Mode

Clone the repo from Github
```bash
git clone https://github.com/metachar/PhoneSploit
cd PhoneSploit
```

## Build the docker image

```bash
docker build -t phonesploit .
```
docker images

```bash
➜  PhoneSploit git:(master) ✗ docker images
REPOSITORY                    TAG                    IMAGE ID
phonesploit                   latest                 4f185b4085fd
```

if you wanna put the tag to the image just add :<tag> like this phonesploit:v1.0

Run the container

```bash
docker run -dti --name phonesploit phonesploit:<tag> 
```
## Build the network

```bash
docker network create security 
```

connect the container to the network

                        network container_name
```bash
docker network connect security phonesploit
```

## Execute websploit in container

```bash
docker exec -ti phonesploit python2 main_linux.py

```
Exit the container 'CTRL + c'
