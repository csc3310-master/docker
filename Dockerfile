FROM ubuntu:24.10
LABEL "author"="Carlos R. Arias"
ARG user=student

# Install all required packages for 
# Concepts of Programming Languages:
#    C++ Compiler, valgrind, gdb, ncurses libraries
# Specific compilers and interpreters are left to the student to install.
RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y 	build-essential 
RUN apt-get install -y 	clang 
RUN apt-get install -y 	cmake 
RUN apt-get install -y	g++ 
RUN apt-get install -y 	gcc 
RUN apt-get install -y	gdb 
RUN apt-get install -y	make 
RUN apt-get install -y 	sudo 
RUN apt-get install -y	valgrind 
RUN apt-get install -y	vim  
RUN apt-get install -y 	openssh-server 
RUN apt-get install -y	rsync


# Expose port 22 to allow connection from CLion
EXPOSE 22

# Create a user to access through SSH from CLion
RUN useradd -m $user && echo "$user:$user" | chpasswd && adduser $user sudo

# Create a volume to connect a local directory to a directory in the image
VOLUME /development

# Setup starting script to start SSH server
RUN echo "clear" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc  \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo Welcome $user to your Docker Container!!" >> ~/.bashrc \
	&& echo "echo ----------------------------------------" >> ~/.bashrc \
	&& echo "echo       Computer Science Rocks" >> ~/.bashrc \
	&& echo "echo ----------------------------------------" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "service ssh start" >> ~/.bashrc

