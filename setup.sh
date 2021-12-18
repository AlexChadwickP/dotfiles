#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt-get install gcc g++

# Spacevim
curl -sLf https://spacevim.org/install.sh | bash

# Cargo and Rustup
curl https://sh.rustup.rs -sSf | sh

# Zsh
apt-get install zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ranger
apt-get install ranger
