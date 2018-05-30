# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\033[35m\][\w]\[\033[0m\]\n\[\033[1;31m\]\u\[\033[1;33m\] $ \[\033[0m\]'

export EDITOR=nvim
export PAGER=less
export SCHOOL='acferr@red.cse.yorku.ca'

alias ls='ls --color=auto'
alias vim='nvim'
alias r='ranger'
alias nf='clear && neofetch'
alias vrc='vim ~/.config/nvim/init.vim'
alias i3rc='vim ~/.config/i3/config'
alias brc='vim ~/.bashrc'
alias xrc='vim ~/.Xresources'
alias p='sudo pacman'
alias Txa="cp ~/documents/school/latexDocs/article.tex $PWD && mv article.tex $1"
alias Tx3342="cp ~/documents/school/latexDocs/eecs3342Template.tex $PWD && mv eecs3342Template.tex $1"

aurinstall() { curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/$1.tar.gz && tar -xvf $1.tar.gz && cd $1 && makepkg --noconfirm -si && cd .. && rm -rf $1 $1.tar.gz ;}

getgit() { git clone http://github.com/$1/$2.git ;}
export -f getgit

getgitme() { git clone http://github.com/acferreir4/$1.git ;}
export -f getgitme
