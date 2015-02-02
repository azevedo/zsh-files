SOURCE=${0%/*}

source $SOURCE/env/env.zsh

fpath=($SOURCE/completion $fpath)

source $SOURCE/functions/functions.zsh
source $SOURCE/functions/tmux.zsh

source $SOURCE/path/paths.zsh

source $SOURCE/aliases/aliases.zsh

source $SOURCE/base16-shell/base16-google.dark.sh
