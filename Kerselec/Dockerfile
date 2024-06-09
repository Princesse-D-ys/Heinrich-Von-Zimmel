FROM alpine:3.19.0 AS builder

#premier container
RUN apk update && \
    apk add --no-cache \
    neovim \
    git \
    python3 \
    python3-dev \
    py3-pip 

#second container
FROM alpine:3.19.0

RUN apk update && \
    apk add --no-cache \
    openssl \
    ncurses \
    wget \
    curl \
    python3 \
    neovim \
    tmux \
    zsh \
    git \
    build-base

RUN adduser -D Keris -s /usr/bin/bash 

USER Keris

RUN wget https://raw.githubusercontent.com/Keris/MesDocker/main/.tmux.conf -O /home/Keris/.tmux.conf

RUN wget https://raw.githubusercontent.com/Keris/MesDocker/main/.tmux.conf -O /home/Keris/.tmux.conf && \
    git clone https://github.com/tmux-plugins/tpm /home/Keris/.tmux/plugins/tpm && \
    mkdir /home/Keris/mnt

RUN cd $HOME &&\
    git clone https://github.com/NvChad/starter ~/.config/nvim &&\
    nvim --headless +qa &&\ 
    cd

WORKDIR /home/Keris
