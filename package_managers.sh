#!/usr/bin/env bash

sudo apt update
## snap
sudo apt install snapd -y
## cargo (rust pm)
curl https://sh.rustup.rs -sSf | sh
echo ". $HOME/.cargo/env" >> "$HOME"/.bashrc
sudo apt install build-essential -y

sudo apt autoremove -y

read -p "Restart laptop!"

