# Base image
FROM node:14.15.1

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

# Install electron
RUN npm install electron -g

