#Dotfiles
These are my dotfiles. Should work with Ubuntu 12.x - Ubuntu 13.10.

 - Clone repo into home folder (<code>~/</code>)
 - Run <code>git submodule update --init</code> (Installs Vundle)
 - Run <code>./gnome-terminal-theme.sh</code> to install Tomorrow terminal profile.
 - Open terminal and go to <code>Preferences > Profiles</code> and set Tomorrow to as default.

You can clone the repo into another folder and copy over the files you want manually. If you choose to do that, be sure to update the submodules before copying <code>.vim/</code>

Please note that some of the aliases/etc assume that you have nginx installed. That won't be useful to you if you don't use nginx, of course. :)
