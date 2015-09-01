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

#php
export PATH=~/.composer/vendor/bin:$PATH

#vim
export VISUAL=vim
export EDITOR=vim

#aliases
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit" #Pretty git log
alias nginxlog="sudo tail -f /var/log/nginx/error.log" #Nginx log shortcut
alias n="nautilus ." #Open current dir in nautilus
alias cb="xclip -sel clip" #Pipe to clipboard shortcut. (Usage: command | cb)

#go
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin
export PATH=/usr/local/bin:$PATH
