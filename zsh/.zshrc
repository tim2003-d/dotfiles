# To be installed:
# ------------------
# handled via submodules:
# - zsh-autosuggestions
# - zsh-history-substring-search
# - zsh-syntax-highlighting
# via package manager:
# - fzf
# - eza

# ------ General Settings ------


# ------ CLI Tools ------
# fzf
# Ctrl+R: Search command history
# Ctrl+T: Search files
source <(fzf --zsh)

# eza
alias ls="eza --color=always"
alias la="eza --long --all --group-directories-first --color=always"
alias tree="eza --tree --level=3 --color=always"
export EZA_CONFIG_DIR="$HOME/.config/eza"

# ------ Prompt (Starship) ------
eval "$(starship init zsh)"


# ------ ZSH Plugins ------

# Auto-suggestions (greyed text, uses .zsh_history)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Smart history (up/down for already typed commands e.g. ssh ...)
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up # Bind to Up/Down arrow keys
bindkey '^[[B' history-substring-search-down

# Syntax highlighting (green/red for known/unknown commands)
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # Must be last