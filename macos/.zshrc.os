# macOS-specific zsh config (Homebrew paths)
# Supports both Apple Silicon (/opt/homebrew) and Intel (/usr/local)
if [[ -d /opt/homebrew/share ]]; then
  BREW_PREFIX="/opt/homebrew"
else
  BREW_PREFIX="/usr/local"
fi

source $BREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme
source $BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
