#####################################
# Exports are in the zprofile file. #
#####################################

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="blinks"

# Aliases
alias ez="$EDITOR ~/.zshrc"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew svn forklift rsync)

source $ZSH/oh-my-zsh.sh

# Disable autocorrect.
unsetopt correctall

# Add the 'z' command to enhance jumping between commonly used directories.
# Install via `brew install z`
source `brew --prefix`/etc/profile.d/z.sh

# Allow multi-rename in shell.
# Usage: mmv *.snippets.txt *.snippets
autoload -U zmv
alias mmv='noglob zmv -W'
