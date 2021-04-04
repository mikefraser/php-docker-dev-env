# Simple PHP Dev Environment 

Simple set up to allow me to start using Kirby CMS in containerised environment.

At the moment I plan to run Composer / Node tools externally of the Containers, but hope to modify this in the future to fully wrap development.

## Usage

1. Initialise any project setup beforehand e.g. in the case of Kirby, set up project folder with:

  `composer create-project getkirby/plainkit [project-name]`

2. Clone this repository into project folder.
3. Run  `docker-compose build`. Should take a few moments if done for the first time to download and build everything
4. Once finished, run `docker-compose up -d` and point your browser at `localhost:8080`. If successful you should see the default page of your project.
5. When you're done, spin the container down with `docker-compose down`. You can start it up again at any time by navigating to the folder in terminal and running `docker-compose up -d`.