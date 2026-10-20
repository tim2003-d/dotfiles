# Installation

Uses "GNU stow" to handle symlinks.
See zsh/.zshrc for more installs

# Usage

- See symlinks: 
find ~ -maxdepth 3 -type l -ls 2>/dev/null | grep "dotfiles"

- Each folder is a "package" (e.g. kitty, zsh).
In this package, rebuild the structure when looking from ~. 
e.g. ~/.config/kitty/kitty.conf becomes <package_name>/.config/kitty/kitty.conf

- When created, run "stow <package_name>" for stow to create the symlinks (or stow */). Or use "stow -n -v */" first to simulate without applying changes.

# Secrets

zsh/.zshrc sources .secrets. Add e.g. API keys to .secret