# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/matt127/.oh-my-zsh

ZSH_THEME="robbyrussell"                                                        
                                                                                
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"                                                  

DISABLE_LS_COLORS="true"
                                                                                
# Would you like to use another custom folder than $ZSH/custom?                 
# ZSH_CUSTOM=/path/to/new-custom-folder                                         
                                                                                
plugins=(                                                                       
  colorize                                                                      
  last-working-dir                                                              
  osx                                                                           
)                                                                               
                                                                                
source $ZSH/oh-my-zsh.sh                                                        
                                                                                
# User configuration                                                            
                                                                                
# Preferred editor for local and remote sessions                                
# if [[ -n $SSH_CONNECTION ]]; then                                             
#   export EDITOR='vim'                                                         
# else                                                                          
#   export EDITOR='mvim'                                                        
# fi                                                                            
                                                                                
# Compilation flags                                                             
# export ARCHFLAGS="-arch x86_64"                                               
                                                                                
# ssh                                                                           
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# list all files
# display file types
# force column output, sorted across
function lss() {
  ls -aFx
}

# cd into my rubyapps folder and list apps
function cdr() {
  cd ~/documents/rubyapps
  lss
}

function g() {
  git status
}

function gaa() {
  git add --all
}

function rap() {
  rails assets:precompile
}
