#zsh conf
ZSH=$HOME/.oh-my-zsh

#theme
ZSH_THEME="robbyrussell"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
COMPLETION_WAITING_DOTS="true"
export TERM=xterm-256color 

#plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

#nodejs
export NODE_PATH=/usr/local/lib/node_modules

#vim
export VISUAL=vim
export EDITOR=vim

#git
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#nginx
alias nginxlog="sudo tail -f /var/log/nginx/error.log"

#nautlius
alias n="nautilus ."

#project navigation
opensite() {
  echo "Opening $@"
  cd /usr/share/nginx/html/$@
}
openproject() {
  echo "Opening $@"
  cd ~/Projects/$@
}
