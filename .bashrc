# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\033[35m\][\w]\[\033[0m\]\n\[\033[1;31m\]\u\[\033[1;33m\] $ \[\033[0m\]'

alias ls='ls --color=auto'
alias vim='nvim'
alias r='ranger'
alias nf='clear && neofetch'

getgit() { git clone http://github.com/$1/$2.git ;}
export -f getgit

getgitme() { git clone http://github.com/acferreir4/$1.git ;}
export -f getgitme
