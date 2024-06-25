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
    tmux \
    zsh \
    git \
    build-base \
    bash

RUN adduser -D yukinoli -s /usr/bin/bash && \
    addgroup yukinoli wheel && \
    usermod --password $(echo 1234 | openssl passwd -1 -stdin) yukinoli && \
    echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel

USER Keris

RUN wget https://github.com/Princesse-D-ys/Heinrich-Von-Zimmel/blob/main/Kerselec/.tmux.conf -O /home/Keris/.tmux.conf

RUN wget https://github.com/Princesse-D-ys/Heinrich-Von-Zimmel/blob/main/Kerselec/.tmux.conf -O /home/Keris/.tmux.conf && \
    git clone https://github.com/tmux-plugins/tpm /home/Keris/.tmux/plugins/tpm && \
    mkdir /home/Keris/mnt

RUN cd $HOME &&\
    git clone https://github.com/NvChad/starter ~/.config/nvim &&\
    nvim --headless +qa &&\ 
    cd

WORKDIR /home/Keris
