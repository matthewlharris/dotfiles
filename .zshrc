export ZSH=/Users/matt/.oh-my-zsh

ZSH_THEME="robbyrussell"

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
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say cache destroyed;"
alias cdr="cd ~/documents/ruby-apps; lss;"
alias cdj="cd ~/documents/javascript-apps; lss;"
alias cdp="cd ~/documents/python-apps; lss;"
alias rap="rm -r public/packs/*; rails assets:precompile; yarn install;"


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
