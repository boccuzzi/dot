if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export HISTSIZE=5000
export HISTFILESIZE=5000
HISTCONTROL=ignoreboth
shopt -s histappend
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

#export TERM=xterm-256color

shopt -s checkwinsize
shopt -s globstar

export PS1="\[\033[01;32m\][\u@\h]\[\033[01;34m\]\w\[\033[00m\]> "

alias cpptags='ctags --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++'
# --exclude
alias less='less -i'

alias grep='grep -niIR --color=auto'
export GREP_COLORS='0;31'

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

alias ls='ls -AF --color=auto'
alias ll='ls -lh'
alias lx='ll -XB'   # Sort by extension.
alias lk='ll -S'    # Sort by size.
alias lt='ll -t'    # Sort by date.
alias lc='ll -c'    # Sort by change time.
alias lu='ll -u'    # Sort by show access time.

alias .='cd ..'
alias ..='cd ../../'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
