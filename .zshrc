export ZSH=/Users/matt/.oh-my-zsh

ZSH_THEME="robbyrussell"

$EDITOR="atom"

COMPLETION_WAITING_DOTS="true"

DISABLE_LS_COLORS="true"

plugins=(
  colorize
  last-working-dir
  osx
)

source $ZSH/oh-my-zsh.sh


# NOTES
# find rails PID: lsof -wni tcp:3000
# kill PID: kill -9 PID
# see website headers: curl -IL domainname.com

alias lss="ls -aFx"
alias g="git status"
alias gaa="git add --all"
alias gcom="git commit"
alias spec="rspec -fd"
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; say cache destroyed"

# cd into my python-apps folder and list apps
function cdp() {
  cd ~/documents/python-apps
  lss
}

# cd into my ruby-apps folder and list apps
function cdr() {
  cd ~/documents/ruby-apps
  lss
}

# cd into my javascript-apps folder and list apps
function cdj() {
  cd ~/documents/javascript-apps
  lss
}

function rap() {
  rm -r public/packs/*
  rails assets:precompile
  yarn install
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
