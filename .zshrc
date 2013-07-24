# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#Theme
ZSH_THEME="robbyrussell"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
COMPLETION_WAITING_DOTS="true"
export TERM=xterm-256color 

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

#Nodejs
export NODE_PATH=/usr/local/lib/node_modules

#vim
export VISUAL=vim
export EDITOR=vim

# Coda
export CODA_PATH=/Applications/Coda\ 2.app
coda () {

for var in "$@"
  do
  if [[ -d $var ]]
    then
    echo $var
    ls $var | grep "\(htm\|html\|css\|php\|txt\|js\|coffee\|py\|rb\|sh\|ini\|conf\)$" | xargs -I {} open -a "$CODA_PATH" "$var/"{}
  else
    open -a "$CODA_PATH" $var
  fi
  done
}

#Git
gitlog() {
  git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
}

