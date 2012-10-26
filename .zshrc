# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="false"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="false"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/usr/local/sbin:/usr/local/bin:$PATH

alias htdocs="/Users/patrickcoffey/Sites"

#Mysql Management
alias startsql="mysql.server start"
alias stopsql="mysql.server stop"
alias editmysqlconf="/usr/local/Cellar/mysql/5.5.25a/bin/mysql_secure_installation"

#apache Management
alias restarta="sudo apachectl graceful"
alias starta="sudo apachectl start"
alias stopa="sudo apachectl stop"

#Edit Files
alias editvhosts="vim /etc/apache2/extra/httpd-vhosts.conf"
alias edithost="vim /etc/hosts"
alias editaconf="vim /etc/apache2/httpd.conf"
alias editphpconf="vim /etc/php.ini"

#projects
opensite() {
  if [[ -d "~/Sites/retainer/$var" ]] 
    then
    echo "yes"
    cd ~/Sites/retainer/$var
  fi 
}

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

