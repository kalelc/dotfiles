# ZSH theme to display.
ZSH_THEME="robbyrussell"

# Enable command auto-correction.
ENABLE_CORRECTION="false"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="false"

# Disable marking untracked files as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History time stamps
HIST_STAMPS="yyyy-mm-dd"

# Spaceship settings
SPACESHIP_PROMPT_ORDER=( time user host dir git )
SPACESHIP_DOCKER_SHOW=false

# Sourcing oh-my-zsh and other shell helpers
. $HOME/.exports
. $HOME/.aliases
. $ZSH/oh-my-zsh.sh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault
eval "$(/opt/homebrew/bin/brew shellenv)"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

eval "$(pyenv init -)"


# Load Angular CLI autocompletion.
source <(ng completion script)
