# Dotfiles

Cross-platform dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

```
dotfiles/
├── base/       # Shared config (nvim, kitty, zshrc)
├── linux/      # Linux overrides (Arch zsh plugin paths, kitty abstract socket)
├── macos/      # macOS overrides (Homebrew zsh plugin paths, kitty file socket)
└── install.sh  # Auto-detects OS and stows the right packages
```

### How it works

- `base/` contains all config that's identical across platforms.
- `linux/` and `macos/` contain only the OS-specific pieces:
  - `.zshrc.os` — plugin source paths (Arch `/usr/share` vs Homebrew prefix)
  - `.config/kitty/os-overrides.conf` — `listen_on` socket type (abstract vs file-based)
- The shared `.zshrc` sources `~/.zshrc.os` and the shared `kitty.conf` uses `include os-overrides.conf`.

## Install

```bash
# Clone
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles

# Run the installer (detects OS automatically)
./install.sh
```

### Prerequisites

- [GNU Stow](https://www.gnu.org/software/stow/)
  - Arch: `sudo pacman -S stow`
  - macOS: `brew install stow`
- zsh with [oh-my-zsh](https://ohmyz.sh/)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [kitty terminal](https://sw.kovidgoyal.net/kitty/)
- [Neovim](https://neovim.io/)

## Uninstall

```bash
cd ~/dotfiles
stow -D base
stow -D macos   # or linux
```
