FROM alpine:3.19.0 

RUN sed -i 's/#\(.*\/community\)/\1/' /etc/apk/repositories

RUN apk update && \
    apk add --no-cache \
    sudo \
    shadow \
    openssl \
    ncurses \
    wget \
    curl \
    python3 \
    neovim \
    zsh \
    git \
    build-base \
    bash

RUN adduser -D Keris -s /usr/bin/bash && \
    addgroup Keris wheel && \
    usermod --password $(echo 1234 | openssl passwd -1 -stdin) Keris && \
    echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel

USER Keris

RUN mkdir /home/Keris/mnt

RUN cd $HOME &&\
    git clone https://github.com/NvChad/starter ~/.config/nvim &&\
    nvim --headless +qa &&\ 
    cd

WORKDIR /home/Keris
