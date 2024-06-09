FROM alpine:3.19.0 AS builder

#premier container
RUN apk update && \
    apk add --no-cache \
    neovim \
    git \
    python3 \
    python3-dev \
    py3-pip \
    build-base

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

RUN adduser -D Kêr-is -s /usr/bin/bash 

USER Kêr-is

RUN wget https://raw.githubusercontent.com/Kêr-is/MesDocker/main/.tmux.conf -O /home/Kêr-is/.tmux.conf

RUN wget https://raw.githubusercontent.com/Kêr-is/MesDocker/main/.tmux.conf -O /home/Kêr-is/.tmux.conf && \
    git clone https://github.com/tmux-plugins/tpm /home/Kêr-is/.tmux/plugins/tpm && \
    mkdir /home/Kêr-is/mnt

RUN cd $HOME &&\
    git clone https://github.com/NvChad/starter ~/.config/nvim &&\
    nvim --headless +qa &&\ 
    cd

WORKDIR /home/Kêr-is
