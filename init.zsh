SOURCE=${0%/*}

source $SOURCE/env/env.zsh

fpath=($SOURCE/completion $fpath)
# completion
autoload -U compinit
compinit

source $SOURCE/functions/functions.zsh

source $SOURCE/path/paths.zsh

source $SOURCE/aliases/aliases.zsh
