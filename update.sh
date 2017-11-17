#!/bin/bash

#Remove previous files 

[ -f ~/git-vim/.vimrc ] && rm -f ./.vimrc || echo "Not existing .vimrc"

# Copy files

cp ~/.vimrc ~/git-vim/.vimrc
