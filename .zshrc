# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/matt127/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Path to the Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

DISABLE_LS_COLORS="true"

plugins=(
  colorize
  last-working-dir
  osx
)

source $ZSH/oh-my-zsh.sh

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
}

function gcom() {
  git commit
}

function dnsflush() {
  sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; say cache destroyed
}



# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
