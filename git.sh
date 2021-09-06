#!/usr/bin/env bash

# Add ssh keys to the git providers
open_git_provider_to_set_key(){
	xclip -selection clipboard < "$HOME"/.ssh/id_ed25519.pub
	xdg-open "$1"
	read -p "Press ENTER to continue..."
	ssh -T $(echo $1 | sed "s+https://+git@+")
}

sudo apt install git -y
sudo apt install xclip -y

git config --global user.email "dev.iz9.l.n@gmail.com"
git config --global user.name "iz9"
git config --global init.defaultBranch "master"

ssh-keygen -t ed25519 -C "dev.iz9.l.n@gmail.com" -f "$HOME"/.ssh/id_ed25519
eval "$(ssh-agent -s)"
ssh-add "$HOME"/.ssh/id_ed25519

open_git_provider_to_set_key https://github.com
open_git_provider_to_set_key https://gitlab.com
open_git_provider_to_set_key https://bitbucket.org

# install github cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh
gh auth login

