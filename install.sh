#!/usr/bin/env bash
set -e

echo "💡 Setting up dotfiles..."

mkdir -p ~/.config/fish
ln -sf "$(pwd)/config/fish/config.fish" ~/.config/fish/config.fish

mkdir -p ~/.poshthemes
ln -sf "$(pwd)/poshthemes/hul10.omp.json" ~/.poshthemes/hul10.omp.json

# PATHに ~/.local/bin がなければfish_user_pathsに追加
if ! fish -c 'contains ~/.local/bin $fish_user_paths'; then
    echo "📌 Adding ~/.local/bin to fish_user_paths..."
    fish -c 'set -Ux fish_user_paths $fish_user_paths ~/.local/bin'
fi

echo "✅ Done! Restart your terminal or run 'exec fish'"
