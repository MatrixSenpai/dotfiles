#!/bin/bash

if ! [ $(id -u) = 0 ]; then
  sudo apt install curl zsh
else
  apt install curl zsh
fi

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
