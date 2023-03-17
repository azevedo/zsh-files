SOURCE=${0%/*}

# VI mode
bindkey -v
bindkey "^F" vi-cmd-mode

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# handy keybindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word

autoload -U zmv

source $SOURCE/env/env.zsh

fpath=($SOURCE/completion $fpath)
# completion
autoload -U compinit
compinit

source $SOURCE/functions/functions.zsh

source $SOURCE/path/paths.zsh

source $SOURCE/aliases/aliases.zsh
