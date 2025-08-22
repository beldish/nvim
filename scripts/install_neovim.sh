#!/bin/bash
# OUTPUT-COLORING
red='\\e\[0;31m'
green='\\e\[0;32m'
# Introduction to the setup script
echo -e "Setup neovim...\n"
cd ./tmp
sudo rm -rf neovimi
git clone https://github.com/neovim/neovim
cd ./neovim
sudo make CMAKE\_BUILD\_TYPE=Release install
cd ../tmp
sudo rm -rf neovim
#git clone https://github.com/username/your-nvim](https://github.com/username/your-nvim) config.git \~/.config/nvim
