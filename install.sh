#!/bin/bash
set -u # for seeing errors

DOTFILES="$HOME/dotfiles"
CONFIG="$HOME/.config"

# Format: Source:Destination
items=(
	"$DOTFILES/.zshrc:$HOME/.zshrc"
	"$DOTFILES/kitty:$CONFIG/kitty"
	"$DOTFILES/nvim:$CONFIG/nvim"
)

# -p means if .config already exists, then don't throw an error
mkdir -p "$CONFIG"

echo "Installing dotfiles..."

for entry in "${items[@]}"; do
	# 1. Set separator to a :
	# 2. Read the left part into 'src' and right part into 'dst'
	# 3. <<< sends the entry string into the read command
	IFS=":" read -r src dst <<< "$entry"

	# Create link, -s = symbolic, -f = force
	ln -sf "$src" "$dst"
done

if command -v brew >/dev/null 2>&1; then
	echo 'Detected MacOS'
else
	echo 'Detected Linux'
fi

echo 'Dotfiles installed successfully!'
