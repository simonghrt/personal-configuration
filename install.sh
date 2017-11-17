#!/bin/bash

#Remove previous files 

[ -f ~/.vimrc ] && rm -f ~/.vimrc || echo "Not existing .vimrc"

# Copy files

cp ~/git-vim/.vimrc ~/.vimrc
