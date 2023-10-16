# Unix
alias e="$EDITOR"
alias v="$VISUAL"
alias l='ls -lah'
alias la='ls -lAh'
alias h='exa -lah'
alias md='mkdir -p'

# Other
alias doc='cd ~/Documents'
alias dow='cd ~/Downloads'
alias drop='cd ~/Dropbox'
alias src='source ~/.zshrc'
alias ev='"$EDITOR" ~/dotfiles/config/nvim/init.vim'
alias ez='"$EDITOR" ~/dotfiles/zshrc'

# git
alias ghm='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'
#alias gh="open \`git remote -v | grep fetch | awk '{print \$2}' | sed 's/git@/http:\/\//' | sed 's/com:/com\//'\`| head -n1"

# Bundler
alias b="bundle"
alias be='bundle exec'

# Rails
alias migrate="bundle exec rake db:migrate && bundle exec rake db:migrate RAILS_ENV=test"
alias rollback="bundle exec rake db:rollback && bundle exec rake db:rollback RAILS_ENV=test"
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'

#Subvisual
alias s="bin/server"

#Docker
alias dcu="docker-compose up -d --quiet-pull --build"
alias dcd="docker-compose down"
alias dcs="docker-compose stop"
