# nvim-config

## Requirements
- Neovim **0.12+** (uses built-in treesitter)
- `git`, `fzf`, `ripgrep` (`rg`), `fd` (used by fzf-lua)

```bash
# Windows
winget install Neovim.Neovim junegunn.fzf BurntSushi.ripgrep.MSVC sharkdp.fd

# macOS
brew install neovim fzf ripgrep fd

# NixOS: add to environment.systemPackages (or home.packages)
#   neovim fzf ripgrep fd
```

Check the version with `nvim --version`; distro packages may be older than 0.12.

## Setup
```bash
# NixOS / macOS
git clone git@github.com:brandonchui/nvim-config.git ~/.config/nvim

# Windows
git clone git@github.com:brandonchui/nvim-config.git ~/AppData/Local/nvim
```

Open nvim — lazy.nvim will bootstrap and install plugins automatically on first launch.

## Syncing
```bash
git pull        # then inside nvim:
:Lazy restore   # match plugin versions to lazy-lock.json
```
