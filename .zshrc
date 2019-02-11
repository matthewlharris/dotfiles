export ZSH=/Users/matt/.oh-my-zsh
export PATH="/usr/local/opt/openssl/bin:$PATH"


export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh


# NOTES
# find rails PID: lsof -wni tcp:3000
# kill PID: kill -9 PID
# see website headers: curl -IL domainname.com

alias cdj="cd ~/documents/javascript-apps; lss;"
alias cdp="cd ~/documents/python-apps; lss;"
alias cdr="cd ~/documents/ruby-apps; lss;"
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say cache destroyed"
alias g="git status"
alias gaa="git add --all"
alias gcom="git commit"
alias lss="ls -aFx"
alias rap="rm -r public/packs/*; rails assets:precompile; yarn install"
alias spec="rspec -fd"


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
