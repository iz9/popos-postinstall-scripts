#!/usr/bin/env bash
# JetbrainsToolbox

FILE="$(mktemp --suffix=.tar.gz)"
DIR="$(mktemp -d /tmp/jbtb-XXXX)"

wget -O "$FILE" https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.20.8804.tar.gz 
tar -xzf "$FILE" -C "$DIR"
"$DIR"/jet*/jet*
