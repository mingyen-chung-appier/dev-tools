#!/bin/bash
set -e

BIN_DIR="$HOME/.local/bin"
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$BIN_DIR"

for script in "$REPO_DIR/bin/"*; do
  name="$(basename "$script")"
  ln -sf "$script" "$BIN_DIR/$name"
  echo "Installed $name -> $BIN_DIR/$name"
done

# Ensure ~/.local/bin is in PATH
if ! echo "$PATH" | grep -q "$BIN_DIR"; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
  echo "Added $BIN_DIR to PATH in ~/.zshrc"
fi

echo "Done! Run 'source ~/.zshrc' to reload your shell."
