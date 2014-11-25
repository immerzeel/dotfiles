#####################################
# Exports are in the zprofile file. #
#####################################

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

# Aliases
alias ez="$EDITOR ~/.zshrc" # Quick edit the zsh config file.
alias algr="alias | grep" # Learn the alias shortkey.
alias tmux='tmux -u' # Handle unicode characters the right way.

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="true"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras git-flow tmux tmuxinator \
	gitignore brew brew-cask marked2 vagrant \
	bower gem z)

source $ZSH/oh-my-zsh.sh

# Disable autocorrect.
unsetopt correctall

# Allow multi-rename in shell.
# Usage: mmv *.snippets.txt *.snippets
autoload -U zmv
alias mmv='noglob zmv -W'
