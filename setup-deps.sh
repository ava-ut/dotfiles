#!/usr/bin/env bash
set -e

echo "🐟 Installing fish..."
sudo apt update
sudo apt install -y fish curl git unzip fd-find fzf

echo "🌟 Installing oh-my-posh..."
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

echo "📦 Installing zoxide..."
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

echo "📝 Setup complete. Now run ./install.sh to apply dotfiles"
