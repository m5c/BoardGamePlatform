# Board Game Platform

Microservice configuration for an automated deployment of BGP core services.

## About

The *Board Game Platform* is a Microservice of reusable components for generic board game implementations. This repository hosts the configuration files for deployment of it's core services as docker containers on a single host. The core services are:

 * [Database](https://github.com/kartoffelquadrat/LobbyService/blob/master/Dockerfile-ls-db): A MySQL database for BGP users, credentials and roles.
 * [LobbyService](https://github.com/kartoffelquadrat/LobbyService): A SpringBoot/Java Webservice for BGP user, game and session management.
   * [LobbyServiceWebUI](): A HTML/JS web frontend for the LobbyService.
 * [BgpXox](https://github.com/kartoffelquadrat/BgpXox): A sample BGP compliant implementation of the game *Tic Tac Toe*, written in SpringBoot/Java. Comes with a built in HTML/JS web frontend.

## About Docker

Docker is a virtualization technology that allows a convenient deployment (installation) of services. Deployed containers bring all internally required dependencies and are therefore more convenient to setup than with a traditional installation. Also docker containers have access to and share the host kernel and are therefore more performant than virutal machines.
The BGP provides docker configurations for all BGP-core services and a docker-compose configuration for their collective startup.

## Deployment

 * Depending on where you want to deploy, either:
   * install [Docker Desktop](https://www.docker.com/products/docker-desktop) (Dev Systems / Mac or Windows Personal Computers)
   * install [Docker Compose](https://docs.docker.com/compose/install/) (Prod Systems / Linux Servers)

 * Clone this repository:  
```git clone https://github.com/kartoffelquadrat/BoardGamePlatform.git```

 * *Recursively* pull, and re-attach all subrepositories:  
```./updatesubmodules.sh```

 * Power up the platform:  
```docker-compose up```  
(use ```docker-compose up --build``` to force rebuild)

 * Test the platform:
    * Visit the [WebUI](http://127.0.0.1:4242/)
    * login with credentials ```admin```, ```admin```
      * create new users
    * login with standard (non admin users) in two browsers
    * create a Xox session on browser 1
    * join the Xox session on browser 2
    * *Launch* the session on browser 1
    * *Play!* on both browsers.

 > The BGP services can also be installed manually (without docker). To do so, follow the install instructions in the individual repositories.

## ...
