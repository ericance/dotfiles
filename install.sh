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

echo "Installing packages..."
if command -v brew >/dev/null 2>&1; then
	echo 'Detected MacOS: Updating with brew'
	brew install kitty nvim zsh-fast-syntax-highlighting zsh-autosuggestions
elif command -v pacman >/dev/null 2>&1; then
	echo 'Detected Arch: Updating with pacman'
	sudo pacman -S install kitty nvim zsh-fast-syntax-highlighting zsh-autosuggestions
fi

# -p means if .config already exists, then don't throw an error
mkdir -p "$CONFIG"
echo "Linking dotfiles..."

for entry in "${items[@]}"; do
	# 1. Set separator to a :
	# 2. Read the left part into 'src' and right part into 'dst'
	# 3. <<< sends the entry string into the read command
	IFS=":" read -r src dst <<< "$entry"

	# Create link, -s = symbolic, -f = force, -n don't nest
	ln -sfn "$src" "$dst"
done

echo 'Setup completed successfully!'
