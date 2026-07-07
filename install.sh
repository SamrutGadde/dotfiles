#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "==> Dotfiles directory: $DOTFILES_DIR"

# Detect OS
case "$(uname -s)" in
  Linux)  OS_DIR="linux" ;;
  Darwin) OS_DIR="macos" ;;
  *)
    echo "ERROR: Unsupported OS: $(uname -s)"
    exit 1
    ;;
esac

echo "==> Detected OS: $OS_DIR"

# Check that stow is installed
if ! command -v stow &>/dev/null; then
  echo "ERROR: GNU Stow is not installed."
  echo "  Linux (Arch): sudo pacman -S stow"
  echo "  macOS:        brew install stow"
  exit 1
fi

# Stow base (shared config)
echo "==> Stowing base config..."
stow -d "$DOTFILES_DIR" -t "$HOME" base

# Stow OS-specific config
echo "==> Stowing $OS_DIR config..."
stow -d "$DOTFILES_DIR" -t "$HOME" "$OS_DIR"

echo "==> Done! Restart your shell or run: source ~/.zshrc"
