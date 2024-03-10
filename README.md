These are my dotfiles. Should work with Ubuntu 20.x - Ubuntu 23.10/latest macOS, using zsh.

# Prerequisites

- Required:
    - ZSH shell
    - NeoVim
- Optional (recommended)
    - Oh-my-zsh
    - tmux

### Prerequisites installation

<details>
    <summary>Ubuntu Installation</summary>

```sh
sudo apt update

# Required dependencies
sudo apt install -y zsh neovim
# Set default shell
chsh -s /bin/zsh 

# Optional dependencies
sudo apt install -y tmux
curl -sSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```
</details>

<details>
    <summary>macOS Installation</summary>

```sh
brew update

# Required dependencies
brew install zsh neovim
# Set default shell
chsh -s /bin/zsh 

# Optional dependencies
brew install tmux
curl -sSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```
</details>

# Installation

 - Clone repo into home folder
 ```sh
git clone https://github.com/MatrixSenpai/dotfiles --recurse-submodules
```
 - Copy, or symlink, the following files:
    - `.zshrc`
    - `.tmux.conf`
    - `nvim-config`
```sh
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/nvim-config ~/.config/nvim
```
- Run `:Lazy install` inside vim to install all plugins
