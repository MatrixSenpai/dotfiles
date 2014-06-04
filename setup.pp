#
# Ubuntu Desktop Development Evironment Setup/Config
# Requires:
#   acme-ohmyzsh
#   puppetlabs-apt

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

# chrome
package { "chromium-browser":
  ensure => "installed"
}
package { "flashplugin-nonfree":
  ensure => "installed"
}
file { "/usr/lib/flashplugin-installer/libflashplayer.so":
  ensure => "link",
  target => "/usr/lib/chromium-browser/plugins"
}
exec { "chromium_add_plugin":
  command => "chromium-browser --enable-plugins",
  path => "/usr/lib/chromium-browser"
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

#apache2
package { "apache2":
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
