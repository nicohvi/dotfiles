# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# !important

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME=nico

# alias glory
alias be="bundle exec"
alias gs="git status"
alias vi='vim' # lets always use vim
alias rc='rails c'
alias vim="/usr/local/Cellar/vim/7.4.430_1/bin/vim" # and while we're at it, let's use vim 7.4
alias zshconf="vi ~/.zshrc"

# set local to Norwegian UTF-8
LANG=no_NO.UTF-8

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# so tmux sessions keep their name
DISABLE_AUTO_TITLE=true

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

# Plugins galore
# Located in ~/.oh-my-zsh/custom/plugins
plugins=(git autojump)

PATH="$HOME/bin:$HOME/symlinks:$HOME/.rbenv/bin:/usr/textbin:$HOME:$PATH"
export PATH=":$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

# change default postgres user
export PGUSER="nicohvi"

# enable rbenv shims.
eval "$(rbenv init - zsh)"

# open vim when invoking *gem open*
export GEM_EDITOR="vim"
export BUNDLER_EDITOR="vim"

# node version management
source ~/.nvm/nvm.sh

# ----- do NOT remove
source $ZSH/oh-my-zsh.sh

eval "nvm use 4 --silent"
