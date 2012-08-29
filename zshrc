# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="blinks"

export EDITOR=vim
export SVN_EDITOR=$EDITOR

# Aliases
alias ez="$EDITOR ~/.zshrc"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git command-coloring brew svn)

source $ZSH/oh-my-zsh.sh

# Pre-prompt command
source $HOME/dotfiles/scripts/z.sh
function precmd() {
    z --add "$(pwd -P)"
}

# Customize to your needs...
export PATH=/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/X11/bin:/Applications/
