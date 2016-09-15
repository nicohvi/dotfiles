# Path to your oh-my-zsh installation.
export ZSH=/Users/nicohvi/.oh-my-zsh
export MYVIMRC=~/.vimrc
export GOPATH=~/Workspace/go

ZSH_THEME="nico"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-material.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Alias glory
alias be="bundle exec"
alias gs="git status"
alias vi='vim' # Let's always use vim
alias rc='rails c'
alias zshconf="vi ~/.zshrc"
alias tmuxconf="vi ~/.tmux.conf"
alias reload="source ~/.zshrc"
alias ru="ruby"
alias pgstart="postgres -D /usr/local/var/postgres"
#alias rab="rabbitmq-server"
#alias tor="elm reactor"
alias n=". ~/.nvm/nvm.sh"
alias jek="jekyll serve -w"
alias publish="sh publish.sh"
alias serve="mix phoenix.server"
alias debug="iex -S mix phoenix.server"

ENABLE_CORRECTION="true"

# Plugins
plugins=(git autojump)
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$GOPATH/bin"
source $ZSH/oh-my-zsh.sh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="/Users/nicohvi/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  

