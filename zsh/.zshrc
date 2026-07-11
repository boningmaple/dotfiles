HOMEBREW_PREFIX=$(brew --prefix)

#------------------------------------------------------
# Better History
#------------------------------------------------------
HISTSIZE=1000000                  # Keep a large in-memory history
SAVEHIST=1000000                  # Save a large history file
HISTDUP=erase                     # Remove older duplicate entries
# setopt SHARE_HISTORY              # Share history across sessions
setopt APPEND_HISTORY             # Append history instead of overwriting
setopt HIST_IGNORE_SPACE          # Skip commands starting with a space
setopt HIST_IGNORE_ALL_DUPS       # Ignore duplicated commands
setopt HIST_SAVE_NO_DUPS          # Don't write duplicates to history file
setopt HIST_IGNORE_DUPS           # Ignore consecutive duplicates
setopt HIST_FIND_NO_DUPS          # Skip duplicates when searching history
setopt NO_CASE_GLOB NO_CASE_MATCH # Make globbing and matching case-insensitive
setopt INTERACTIVE_COMMENTS       # Allow comments in interactive shell

#------------------------------------------------------
# Aliases
#------------------------------------------------------
alias l='ls -AFGlh'
alias la='ls -AFG'
alias zig-beta='/Users/maple/projects/zig/build-release/stage3/bin/zig'

# use nvim if available
if [ -x "$(command -v nvim)" ]; then
    alias vim='nvim'
fi

# use zoxide if available
if [ -x "$(command -v zoxide)" ]; then
    alias cd='z'
    alias ..='z ../'
fi

#------------------------------------------------------
# Autocompletion
#------------------------------------------------------
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33 # colorize cmp menu

#------------------------------------------------------
# Additional tools (version managers, CLI tools, ...)
#------------------------------------------------------
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Prompt
if [[ -x "$(command -v starship)" ]]; then
  eval "$(starship init zsh)"
fi

# fzf
if [[ -x "$(command -v fzf)" ]]; then
  source <(fzf --zsh)
fi

# zoxide
if [[ -x "$(command -v zoxide)" ]]; then
  eval "$(zoxide init zsh)"
fi

# fnm
if [[ -x "$(command -v fnm)" ]]; then
  eval "$(fnm env --use-on-cd --shell zsh)"
fi

# Rust
export PATH="$(brew --prefix rustup)/bin:$PATH"

