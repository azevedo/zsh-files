# Unix
alias e="$EDITOR"
alias v="$VISUAL"
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
alias md='mkdir -p'

# Other
alias doc='cd ~/Documents'
alias dow='cd ~/Downloads'
alias drop='cd ~/Dropbox'
alias src='source ~/.zshrc'
alias ev='vim ~/dotfiles-local/vimrc'
alias ea='vim ~/dotfiles-local/aliases'
alias ez='vim ~/dotfiles-local/zshrc'
alias eg='vim ~/dotfiles-local/gitconfig'

# git
alias ghm='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'
alias vm='vim `git diff --name-only`'

# Bundler
alias b="bundle"
alias be='bundle exec'

# Tests and Specs

# Rails
alias migrate="bundle exec rake db:migrate && bundle exec rake db:migrate RAILS_ENV=test"
alias rollback="bundle exec rake db:rollback && bundle exec rake db:rollback RAILS_ENV=test"
alias rk="rake"
alias s="bundle exec rspec"
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'
