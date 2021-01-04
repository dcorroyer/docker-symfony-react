# A Symfony and React app w/ Docker

## Installation:

You have to clone this repository and make:

    make up

If you have any denied permission, make sudo

The command will download and install docker images to make your containers

When it is done, you'll have these containers

    backend
    frontend
    db

You can access all your containers with this command:

    docker exec -it **yourcontainer** bash

Now, if you want to create your Symfony 5 app, you have to connect to the php container:

    docker exec -it backend bash

In your container, you'll be in your working folder, you just have to create the project (will be built in the app folder):

    composer create-project symfony/website-skeleton .

Now, if you want to create your React app, you have to connect to the node container:

    docker exec -it frontend bash

If your container, you'll be in your working folder, you just have to create the project (will be built in the app folder):

    npm create-react-app .

Now your project is up. GREAT !

## Services

A Makefile is up to provide some short commands to help you.

If you can't modify any file in the app folder, you can run this command in the php container:

    chmod -R 777 .
