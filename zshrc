# Setting $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to the oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH theme to display.
ZSH_THEME="robbyrussell"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History time stamps
HIST_STAMPS="yyyy-mm-dd"

# Spaceship settings
SPACESHIP_PROMPT_ORDER=( time user host dir git )
SPACESHIP_DOCKER_SHOW=false

# Sourcing oh-my-zsh and other shell helpers
. $ZSH/oh-my-zsh.sh
. $HOME/.exports
. $HOME/.aliases

# Support to rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
