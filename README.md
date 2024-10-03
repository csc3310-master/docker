# Installation Instructions

## Docker Desktop
1. Go to https://www.docker.com/
2. Create an account
3. Donwload Docker Desktop
4. Install Docker Desktop

## Create the Container for the VM for the class
1. Open a terminal window
2. Move to the directory where you cloned this repo
3. Run the following command: `docker build --build-arg user=cpl -t cpl .`
4. Run the command `docker images` to see the list of images, copy the number of the image you just created
5. Run the following command: `docker run --name=cpl -v /Users/arias/development:/development -p 222:22 -i -t ed5ea8f5c3e7 /bin/bash` Note: the `ed5ea8f5c3e7` should be replaced by _your_ image number, also `/User/arias/development` should be replaced by _your_ development directory path.
6. The last command will open a terminal of your container running. You can run the command `exit` to close that shell.

## Running your container
1. From the Docker Desktop, in the "Containers" tab you will see your container, named **cpl**. You can then start it by clicking on the "Play" button, and then using the ellipsis you can "run a terminal"
2. Once you are in a terminal you can run the commands you need for this class.

## Compilers and Interpreters
It will be up to you to install the required tools for this class:
* [Prolog](https://www.swi-prolog.org/)
* [Scheme](https://www.gnu.org/software/mit-scheme/)
* [Go](https://go.dev/)


