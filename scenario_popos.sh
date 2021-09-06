#!/usr/bin/env bash

sudo apt update
. ./browsers.sh
. ./git.sh
. ./bash_utils.sh
. ./jetbrains_toolbox.sh
. ./nodejs.sh
. ./nerd_fonts.sh
. ./starship_bash.sh
. ./virtualbox.sh
. ./docker.sh
. ./balena.sh
. ./services.sh
. ./apps.sh
sudo apt autoremove -y

reboot
