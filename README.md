# Dotfiles

## Install Zsh

https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH

## Install oh-my-zsh

`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

## Git

### Plugins

#### diff-so-fancy

Installation is as simple as downloading the diff-so-fancy script to a directory in your path. Windows users may need to install MinGW or the Windows subsystem for Linux.

diff-so-fancy is also available from NPM, Nix, brew, and as a package on Arch Linux.

## Vim

### Install Vundle Plugin Manager

`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

### Install Plugins

Launch vim and run `:PluginInstall`

To install from command line: `vim +PluginInstall +qall`

#### Golang Plugin

##### Install Dependencies

Open Vim and execute `:GoInstallBinaries`. This is a vim-go command that installs all vim-go dependencies for you.

*vim 8.x is required to get best experience.*


---

References

- https://github.com/so-fancy/diff-so-fancy

- https://github.com/VundleVim/Vundle.vim

- https://github.com/fatih/vim-go

- https://github.com/robbyrussell/oh-my-zsh/

---