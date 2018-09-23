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

alias python="python3"
alias pip="pip3"

source $ZSH/oh-my-zsh.sh


# NOTES
# find rails PID: lsof -wni tcp:3000
# kill PID: kill -9 PID
# see website headers: curl -IL domainname.com

# list all files
# display file types
# force column output, sorted across
function lss() {
  ls -aFx
}

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

function g() {
  git status
}

function gaa() {
  git add --all
}

function rap() {
  rm -r public/packs/*
  rails assets:precompile
  yarn install
}

function gcom() {
  git commit
}

function flushdns() {
  sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; say cache destroyed
}


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
