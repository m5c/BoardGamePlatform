# Board Game Platform deployment configuration

Exemplary deployment configuration for a Lobby-Service based Board Game Platform.

## About

The content of this repository provides a sample deployment configuration for a generic Board Game Platform, based on the Lobby Service. It is implemented as a Micro-Service web application that consists of the following modules:

 * [LobbyService](https://github.com/kartoffelquadrat/LobbyService): A SpringBoot/Java RESTful service for *user*-, *game*- and *session*-management.
   * Contains [LobbyServiceWebUI](https://github.com/kartoffelquadrat/LobbyServiceWebInterface): A sample HTML/JS web frontend for the LobbyService.
 * [Database](https://github.com/kartoffelquadrat/LobbyService/blob/master/Dockerfile-ls-db): A MySQL database used by the LobbyService for data persistence.
 * [Xox](https://github.com/kartoffelquadrat/BgpXox): A minimal Lobby-Service compliant demo game. (*Tic Tac Toe*, written as a SpringBoot/Java RESTful service with built in HTML/JS web frontend.)

 > Note: With exception to the Database, all services communicate *exclusively* over REST interfaces.

Purpose of this repository is to provide a reusable, easy-to-install platform that illustrates Lobby-Service features.

### Docker Compose

The service interplay configuration for this Board Game Platform uses Docker-Compose.  
  
 - Docker is a virtualization technology that allows a convenient deployment (installation) of services, independent of the host OS. Docker deploys individual services (the modules listed above) as containers. 
 - The Docker-Compose configuration of this repository orchestrates module containers (correct startup sequence, network wiring).

 > Note: You can use this docker-compose configuration on any system, no matter if a personal laptop or a headless server.

### Prerequisites

#### Docker-Compose

Depending on your host-os, install docker-compose with one of the links below:
   * Mac OS / Windows: [Docker Desktop (docker-compose and GUI-tools)](https://www.docker.com/products/docker-desktop)
   * Prod Systems / Linux: [Docker Compose (just docker-compose)](https://docs.docker.com/compose/install/)

#### Code

 * Clone this repository:  
```git clone https://github.com/kartoffelquadrat/BoardGamePlatform.git```

 * *Recursively* pull, and re-attach all subrepositories:  
```./updatesubmodules.sh```  
(This is a modular platform, you need all internal modules for it to work)

### Deployment

 * Power up the platform:  
```docker-compose up```  
(use ```docker-compose up --build``` to force rebuild)

 * Test the platform:
    * Visit the [WebUI](http://127.0.0.1:4242/)
    * login with default admin credentials: ```maex```, ```abc123_ABC123```
      * Click "Admin Zone", create new users (use user or amdin, **not** service as account type)
    * Click "Logout". Then login with standard (non admin users) in two browsers
    * create a Tic Tac Toe session on browser 1
    * join the Tic Tac Toe session on browser 2
    * *Launch* the session on browser 1
    * *Play!* on both browsers.

 > The BGP services can also be installed manually (without docker). See the instruction in the individual module repositories.

## Contact / Pull Requests

Contact information for bug reports and pull requests:

 * Author: Maximilian Schiedermeier ![email](email.png)
 * Github: [Kartoffelquadrat](https://github.com/kartoffelquadrat)
 * Webpage: [McGill University, School of Computer Science](https://www.cs.mcgill.ca/~mschie3)
 * License: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
