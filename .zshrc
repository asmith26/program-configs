## === FROM BASHRC ===
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

## === END: FROM BASHRC ===
## === ZSH CONFIG ===
# see http://www.bash2zsh.com/zsh_refcard/refcard.pdf
## === HISTORY ===
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=100000000000000000
SAVEHIST=100000000000000000
# append to the history file, don't overwrite it
setopt appendhistory

# === OPTIONS === 
# Don't automatically cd to a dir without cd (e.g. git)
unsetopt autocd

# === STYLES and PROMPT ===
source ~/git/Utils/zsh-git-prompt/zshrc.sh
# an example prompt
PROMPT='%B%* %~%b $(git_super_status) '

# Do menu-driven completion (tab select)
zstyle ':completion:*' menu select

# Colour directories and files differently
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

## === END: ZSH CONFIG ===

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ll='ls -alFh'

alias rs='rsync --archive --verbose --progress --human-readable --whole-file'
alias rsnw='rsync --archive --verbose --progress --human-readable'
alias rsd='rsync --archive --verbose --progress --human-readable --whole-file --delete'

alias du1='du -sh *'
alias du.='du -h . -d 1'

alias x='xdg-open .'

alias da='docker ps -a'
alias di='docker images'
alias dr='docker rm'
alias dri='docker rmi'

alias c='conda'
alias nj='nohup jupyter notebook &'

alias gs='git status'
alias gp='git pull'

alias py2s='python -m SimpleHTTPServer 8000'
alias pys='python -m http.server'

alias sai='sudo apt-get install'
alias saa='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade && sudo apt-get autoclean && sudo apt-get autoremove -y'


. ~/.zsh_extra
