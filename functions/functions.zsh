#
# Change file extensions recursively in current directory
#
#   change-extension erb haml
function change-extension() {
  foreach f (**/*.$1)
    mv $f $f:r.$2
  end
}

#
# Calls ls after changing path
#
function chpwd() {
  emulate -L zsh
  ls
}

#
# No arguments: `git status`
# With arguments: acts like `git`
#
function g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}

# Complete g like git
compdef g=git

#
# Kills any process that matches a regexp passed to it
#
function killit() {
  ps aux | grep -v "grep" | grep "$@" | awk '{print $2}' | xargs kill -9
}

#
# Make directory and change into it.
#
function mcd() {
  mkdir -p "$1" && cd "$1";
}

#
# Greps for processes
#
function psgrep() {
  if [ ! -z $1 ] ; then
    echo "Grepping for processes matching $1..."
    ps aux | grep $1 | grep -v grep
  else
    echo "!! Need name to grep for"
  fi
}

function cd() {
  builtin cd $1 && ls
}
