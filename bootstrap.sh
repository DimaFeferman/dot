#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -L ~/.vimrc.after ] 
then
  echo 'file ~/.vimrc.after already exists, please delete or rename this file before running this command'
else
  ln -s $DIR/vimrc.after ~/.vimrc.after
fi


if [ -L ~/.zshrc ]; then
  echo 'file ~/.zshrc already exists, please delete or rename this file before running this command'
else
  ln -s  $DIR/zshrc ~/.zshrc 
fi

if [ -L ~/.tmux.conf ]; then
  echo 'file ~/.tmux.conf already exists, please delete or rename this file before running this command'
else
  ln -s $DIR/tmux.conf ~/.tmux.conf 
fi

