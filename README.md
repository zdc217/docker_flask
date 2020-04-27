# Docker Flask environment

This repo contains a few files that should be all that is needed to build a basic flask environment in docker. I put this together to share with colleagues who might be doing the LinkedIn flask training at https://www.linkedin.com/learning/building-restful-apis-with-flask/ but aren't using PyCharm Pro. This should contain all the requirements needed to follow along with the course. 

## Disclaimer
Don't use this in a production environment.

## Prerequisites
- Docker
- Make

# Windows

[Chocolatey](https://chocolatey.org/) is highly recommended for installing prerequisite packages.

- [Installing Chocolatey](https://chocolatey.org/docs/installation)

#### After Installing Chocolatey
Run choco commands for any of the tools below if you don't already have them installed. 
```
choco install git
choco install docker-desktop
choco install make
```

Note: If running on Apple, install Brew and then replace `choco` with `brew`. If running on Linux, replace `choco` with `apt-get` or your package manager of choice.

#### Local Development

Clone the repository to a directory of your choice on your machine:

```
> git clone https://github.com/zcarrington/docker_flask.git
```

Build and run Docker image:
 ```
  > make
```
This should result in a build, some pip installs, and a running dev server. Once the dev server is running try going to http://localhost:5000/. You should get a hello world message. 

Once the image is built you can just run:
```
> make run
```
to start the development server. 

If you change the Makefile, requirements.in, or Dockerfile run:
```
> make clean
> make
```
to build the images again. 

You can also run:
```
> make shell
```
to get a bash shell. 