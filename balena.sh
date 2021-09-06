#!/usr/bin/env bash
# https://github.com/balena-io/etcher?d_id=31c155b0-3ae6-485a-b19c-8d1c86ffd91eR#debian-and-ubuntu-based-package-repository-gnulinux-x86x64 

curl -1sLf \
 "https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh" \
 | distro=ubuntu version=16.04 codename=xenial sudo -E bash
 

sudo apt update 
sudo apt install balena-etcher-electron -y 
