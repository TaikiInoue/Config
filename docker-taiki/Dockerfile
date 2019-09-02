FROM ubuntu:latest

# setting for nvim
RUN apt update -y
    apt install -y neovim

# setting for dein.vim
RUN apt install -y curl 
    apt install -y git
    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
    sh ./installer.sh ~/.cache/dein


