#!/usr/bin/env bash
# Bash utils use in terminal

## utils from cargo. Cargo package manager must be installed
cargo install bat
cargo install fd-find
cargo install ripgrep
cargo install nomino
cargo install tokei
cargo install exa
cargo install du-dust

## utils from apt
sudo apt update
sudo apt install httpie -y
sudo apt install htop -y
sudo apt install ranger -y
sudo apt install thefuck -y
sudo apt install icdiff -y
sudo apt install pandoc -y
sudo apt install asciinema -y
sudo apt install tldr -y
sudo apt install zeal -y
sudo apt install xclip -y
sudo apt install translate-shell -y
sudo apt install youtube-dl -y
sudo apt install micro -y
sudo apt install trash-cli -y
sudo apt autoremove -y

## utils from snap. Snap package manager must be installed
sudo snap install googler


## update bashrc with scripts
echo 'eval $(thefuck --alias)' >> "$HOME"/.bashrc
cp ./bash_aliases "$HOME"/.bash_aliases


