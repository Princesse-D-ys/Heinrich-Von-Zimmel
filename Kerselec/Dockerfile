FROM alpine:3.19.0

RUN apk update && \
    apk add --no-cache \
    openssl \
    ncurses \
    wget \
    git \
    neovim \
    curl \
    python3 \
    python3-dev \
    py3-pip \
    tmux \
    zsh \
    build-base

RUN adduser -D yukinoli -s /usr/bin/zsh
USER yukinoli

RUN wget https://raw.githubusercontent.com/yukinoli/MesDocker/main/.tmux.conf -O /home/yukinoli/.tmux.conf
RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
RUN mkdir ~/mnt

RUN git clone https://github.com/NvChad/starter ~/.config/nvim && \
    nvim --headless +qa

