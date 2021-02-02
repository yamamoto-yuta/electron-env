# Base image
FROM ubuntu:20.04

# Environment setting
ENV HOME /home
WORKDIR $HOME/
COPY .bashrc .vimrc $HOME/
ENV DEBIAN_FRONTEND=noninteractive

# Install commands
RUN apt-get update && apt-get upgrade -y \
  && apt-get install -y \
    git \
    vim \
    xserver-xorg \
    x11-apps

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm install n -g
RUN n stable
RUN apt-get purge -y nodejs npm

# Install electron
RUN npm install electron -g

