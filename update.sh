#!/bin/bash

#Remove previous files 

[ -f ~/git-vim/.vimrc ] && rm -f ./.vimrc || echo "Not existing .vimrc"
[ -d ~/git-vim/.vim ] && rm -rfd ./.vim || echo "Not existing .vim"

# Copy files

cp ~/.vimrc ~/git-vim/.vimrc
cp -R ~/.vim ~/git-vim/.vim
