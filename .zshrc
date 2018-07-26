# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/matt/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Path to the Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export WORKON_HOME=~/Documents/python-apps/Projects
export PROJECT_HOME=~/Documents/python-apps/Envs
export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.7/bin/python3.7
source /Library/Frameworks/Python.framework/Versions/3.7/bin/virtualenvwrapper.sh
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Uncomment the following line to display red dots whilst waiting for completion.
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# list all files
# display file types
# force column output, sorted across
function lss() {
  ls -aFx
}

# cd into my hello-universe folder and list files
function cdhu() {
  cd ~/documents/hello-universe
  lss
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

function dnsflush() {
  sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; say cache destroyed
}

function flaskapp() {
  FLASK_APP=index.py FLASK_DEBUG=1 flask run
}




# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
