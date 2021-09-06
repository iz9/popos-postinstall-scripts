#!/usr/bin/env bash
# Starship for bash terminal
read -p "CAUTION! Enter 'yes' as answer for the starship prompt"
sh -c "$(curl -fsSL 'https://starship.rs/install.sh')"
echo 'eval "$(starship init bash)"' >> "$HOME"/.bashrc
