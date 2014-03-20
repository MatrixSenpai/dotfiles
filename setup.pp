#
# Ubuntu Desktop Development Evironment Setup/Config
# Requires:
#   acme-ohmyzsh
#   puppetlabs-apt

include apt

#
# Settings Variables
#
$username = "pcoffey"

# Install zsh
package { "zsh":
  ensure => "installed"
}

#
# Create/Configure user
#
user { $username:
  ensure => "present",
  home => "/home/${username}",
  shell => "/bin/zsh"
}

#
# Install packages
#

# system setup/tools
package { "gnome-shell":
  ensure => "installed"
}
package { "gnome-tweak-tool":
  ensure => "installed"
}
package { "gnome-common":
  ensure => "installed"
}
package { "ubuntu-gnome-desktop":
  ensure => "installed"
}
package { "gdm":
  ensure => "installed"
}
package { "htop":
  ensure => "installed"
}
package { "xclip":
  ensure => "installed"
}
package { "curl":
  ensure => "installed"
}

# development tools
package { "git":
  ensure => "installed"
}
package { "vim":
  ensure => "installed"
}

#php
package { "php5-fpm":
  ensure => "installed"
}
package { "php5-json":
  ensure => "installed"
}
package { "php5-curl":
  ensure => "installed"
}
package { "php5-gd":
  ensure => "installed"
}
package { "php5-imagick":
  ensure => "installed"
}
package { "php5-cli":
  ensure => "installed"
}
package { "php5-xdebug":
  ensure => "installed"
}
package { "php5-pear":
  ensure => "installed"
}

#nginx
package { "nginx":
  ensure => "installed"
}

#mysql
package { "mysql-server":
  ensure => "installed"
}
package { "php5-mysql":
  ensure => "installed"
}

#mongodb

#meteor

#
# Symlink dotfiles
#

file { "/home/${username}/.zshrc":
  ensure => "link",
  target => "/home/${username}/dotfiles/.zshrc"
}

file { "/home/${username}/.vimrc":
  ensure => "link",
  target => "/home/${username}/dotfiles/.vimrc"
}

file { "/home/${username}/.vim":
  ensure => "link",
  target => "/home/${username}/dotfiles/.vim"
}
