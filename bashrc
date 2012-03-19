# VARIABLES {
export EDITOR=`which vim` # Define the program files path for brevity.
export TERM='xterm-256color' # To support colors in vim.
export PAGER='less' # Less is more.
export LESS='--RAW-CONTROL-CHARS --ignore-case' # Colored, same as -R.
# }
# PROMPT {
# PS1='[\u@\h \W]\$ '
PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
# }
# HISTORY {
export HISTCONTROL=ignoredups:ignorespace # ignore duplicates (store command once)
export HISTFILESIZE=10000                # History file number of lines
export HISTIGNORE="$:ls:[bf]g:exit"     # Ignore simple commands

# When displaying prompt, write previous command to history file so that,
# any new shell immediately gets the history lines from all previous shells.
export PROMPT_COMMAND='history -a'
# }
# OPTIONS {
shopt -s histappend # append to the history file, don't overwrite it.
shopt -s cmdhist # Store multi-line command as 1 line.
shopt -s extglob # Necessary for programmable complete.

# }
# ALIAS {

# Navigation
alias ..='cd ..'
alias ...='cd ../..'

# Ls
alias ll='ls -l'
alias ls='ls -hF --color'  # add colors for filetype recognition
alias la='ls -Al'          # show hidden files
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al |more'    # pipe through 'more'
alias lr='ls -lR'          # recursive ls


alias mkdir='mkdir -p'

# Grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Git
alias g='git'
alias gs='git status'

# Commit pending changes and quote all args as messages.
function gg() {
    git commit -v -a -m "$*"
}

# Bash
alias ,eb='${EDITOR} ~/dotfiles/bashrc && source ~/dotfiles/bashrc'
alias bstats='f() { history|cut -d\  -f4-5|sort|uniq -c|sort -rn|head -${1:-30}; }; f'
alias path='echo -e ${PATH//:/\\n}'
alias h='history'
# }
# SOLARIZED (DARK) {
echo -ne '\e]4;0;#073642\a'   # black
echo -ne '\e]4;1;#dc322f\a'   # red
echo -ne '\e]4;2;#859900\a'   # green
echo -ne '\e]4;3;#b58900\a'   # yellow
echo -ne '\e]4;4;#268bd2\a'   # blue
echo -ne '\e]4;5;#d33682\a'   # magenta
echo -ne '\e]4;6;#2aa198\a'   # cyan
echo -ne '\e]4;7;#eee8d5\a'   # white (light grey really)
echo -ne '\e]4;8;#002b36\a'   # bold black (i.e. dark grey)
echo -ne '\e]4;9;#cb4b16\a'   # bold red
echo -ne '\e]4;10;#586e75\a'  # bold green
echo -ne '\e]4;11;#657b83\a'  # bold yellow
echo -ne '\e]4;12;#839496\a'  # bold blue
echo -ne '\e]4;13;#6c71c4\a'  # bold magenta
echo -ne '\e]4;14;#93a1a1\a'  # bold cyan
echo -ne '\e]4;15;#fdf6e3\a'  # bold white

echo -ne '\e]10;#eee8d5\a'  # foreground
echo -ne '\e]11;#002b36\a'  # background
echo -ne '\e]12;#859900\a'  # cursor
# }
# SOLARIZED (LIGHT) {
# echo -ne '\e]4;0;#073642\a'   # black
# echo -ne '\e]4;1;#dc322f\a'   # red
# echo -ne '\e]4;2;#859900\a'   # green
# echo -ne '\e]4;3;#b58900\a'   # yellow
# echo -ne '\e]4;4;#268bd2\a'   # blue
# echo -ne '\e]4;5;#d33682\a'   # magenta
# echo -ne '\e]4;6;#2aa198\a'   # cyan
# echo -ne '\e]4;7;#eee8d5\a'   # white (light grey really)
# echo -ne '\e]4;8;#002b36\a'   # bold black (i.e. dark grey)
# echo -ne '\e]4;9;#cb4b16\a'   # bold red
# echo -ne '\e]4;10;#586e75\a'  # bold green
# echo -ne '\e]4;11;#657b83\a'  # bold yellow
# echo -ne '\e]4;12;#839496\a'  # bold blue
# echo -ne '\e]4;13;#6c71c4\a'  # bold magenta
# echo -ne '\e]4;14;#93a1a1\a'  # bold cyan
# echo -ne '\e]4;15;#fdf6e3\a'  # bold white

# echo -ne '\e]10;#586e75\a'  # foreground
# echo -ne '\e]11;#fdf6e3\a'  # background
# echo -ne '\e]12;#eee8d5\a'  # cursor
# }
