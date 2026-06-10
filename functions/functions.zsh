# change-extension $old $new
# Recursively rename files in the current directory, changing extension from $old to $new.
function change-extension() {
  foreach f (**/*.$1)
    mv $f $f:r.$2
  end
}

# chpwd
# Called after changing directories; runs ls to display contents.
function chpwd() {
  emulate -L zsh
  ls
}

# g [$args]
# Convenience wrapper for git. No arguments runs git status; with arguments passes them to git.
function g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}

# Complete g like git
compdef g=git

# killit $pattern
# Kill all processes matching the given pattern using SIGKILL.
function killit() {
  ps aux | grep -v "grep" | grep "$@" | awk '{print $2}' | xargs kill -9
}

# mcd $dir
# Create directory $dir (with parent directories as needed) and change into it.
function mcd() {
  mkdir -p "$1" && cd "$1";
}

# psgrep $pattern
# Search for processes matching the given pattern and display process information.
function psgrep() {
  if [ ! -z $1 ] ; then
    echo "Grepping for processes matching $1..."
    ps aux | grep $1 | grep -v grep
  else
    echo "!! Need name to grep for"
  fi
}

# hist
# Display the 10 most frequently used commands from shell history.
function hist() {
    history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

# extract $file
# Extract archive file in any common format (.tar.gz, .zip, .rar, etc).
function extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2) tar xjf $1 ;;
            *.tar.gz) tar xzf $1 ;;
            *.bz2) bunzip2 $1 ;;
            *.rar) rar x $1 ;;
            *.gz) gunzip $1 ;;
            *.tar) tar xf $1 ;;
            *.tbz2) tar xjf $1 ;;
            *.tgz) tar xzf $1 ;;
            *.zip) unzip $1 ;;
            *.Z) uncompress $1 ;;
            *.7z) 7z x $1 ;;
            *) echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
