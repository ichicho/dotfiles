#!/bin/bash

path=$(dirname $(readlink -f $0))
ln -s ${path}/.vimrc ~/.vimrc
ln -s ${path}/.vim ~/.vim
