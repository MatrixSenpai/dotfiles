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
export NODE_PATH=/usr/local/lib/node_modules

#Mysql Management
alias startsql="mysql.server start"
alias stopsql="mysql.server stop"
alias editmysqlconf="/usr/local/Cellar/mysql/5.5.25a/bin/mysql_secure_installation"

#apache Management
alias restarta="sudo apachectl graceful"
alias starta="sudo apachectl start"
alias stopa="sudo apachectl stop"
alias startsolr="cd /usr/local/Cellar/solr/3.6.1/libexec/example; java -jar start.jar"

#Edit Files
alias editvhosts="sudo vim /etc/apache2/extra/httpd-vhosts.conf"
alias edithost="sudo vim /etc/hosts"
alias editaconf="sudo vim /etc/apache2/httpd.conf"
alias editphpconf="sudo vim /etc/php.ini"

#projects
opensite() {
  echo "Opening $@"
  cd ~/Sites/retainer/$@
}

openapp() {
  echo "Opening $@"
  cd ~/Sites/applications/$@
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

# Database Sync Helpers
# NOTE: Local database names must be the same as site names
mysql-pull-staging() {
  ssh web1.fmclients.com wp-dump -e staging $1 | mysql -u root -p'root' $1
}
mysql-pull-production() {
  ssh web1.fmclients.com wp-dump -e production $1 | mysql -u root -p'root' $1
}
mysql-push-staging() {
  mysqldump -u root -proot $1 | ssh web1 wp-sql-exec -e staging $1
}



#Browser Files/Cleanup
alias viewDownloadHistory="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent'"
alias deleteDownloadHistory="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

