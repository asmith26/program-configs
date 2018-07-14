# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ll='ls -alFh'

alias rs='rsync --archive --verbose --progress --human-readable --whole-file'
alias rsd='rsync --archive --verbose --progress --human-readable --whole-file --delete'

alias du1='du -sh *'
alias du.='du -h . -d 1'

alias x='xdg-open .'

alias da='docker ps -a'
alias di='docker images'
alias dr='docker rm'
alias dri='docker rmi'
