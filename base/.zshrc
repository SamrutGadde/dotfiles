# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
plugins=(git)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Source OS-specific zsh config (plugin paths differ between Linux and macOS)
if [[ -f ~/.zshrc.os ]]; then
  source ~/.zshrc.os
fi

export NVIM="~/.config/nvim"

# Added by AIM CLI
export PATH="$HOME/.aim/mcp-servers:$PATH"

alias ssh="kitty +kitten ssh"

export PATH=/usr/local/bin:$PATH

export PATH=$HOME/.toolbox/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"
# Set up mise for runtime management
eval "$(mise activate zsh)"
# Set up mise for runtime management
eval "$(mise activate zsh)"

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"
source /Users/samqgadd/.brazil_completion/zsh_completion
