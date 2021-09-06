#!/usr/bin/env bash
# Nerd Fonts
DEST="/usr/local/share/fonts/nerd"
mkdir "$DEST"

download_font(){
	local TEMP="$(mktemp --suffix=.zip)"
	wget -O "$TEMP" "$1"
	sudo unzip "$TEMP" -d "$DEST"
}

download_font "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Monoid.zip"
download_font "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip"
download_font "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip"
