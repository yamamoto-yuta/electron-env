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
    vim

# Install x11-apps
RUN apt-get install -y \
  xserver-xorg \
  x11-apps

