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
    x11-apps \
    libgconf-2-4 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libgdk-pixbuf2.0-0 \
    libgtk-3-0 \
    libgbm-dev \
    libnss3-dev \
    libxss-dev \
    libgtkextra-dev \
    libgconf2-dev \
    libnss3 \
    libasound2 \
    libxtst-dev \
    libxss1 \
    libgtk-3-0

# Install electron
npm install -g electron --unsafe-perm=true --allow-root

