#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='  \[\e[1;35m\](\t)\[\e[0m\] \[\e[1;35m\][\u@\h:\[\e[0m\] \[\e[1;35m\]\W]\[\e[0m\] \[\e[1;35m\]\\$\[\e[0m\] '

### fzf ###
eval "$(fzf --bash)"

### Mis alias ###
alias ls='eza --color=always --long --icons=always --no-filesize --no-time --no-user --no-permissions -G --group-directories-first'
  
### Texlive PATH ###
export PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH
export MANPATH=/usr/local/texlive/2025/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2025/texmf-dist/doc/info:$INFOPATH
