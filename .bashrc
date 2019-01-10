# rb's .bashrc

set -o vi

# General variables
export PS1="\[$(tput bold)\]\W\[$(tput sgr0)\] \\$ \[$(tput sgr0)\]"
export TERM=xterm-color
export EDITOR="nvim"
export SVN_EDITOR="nvim"
export CLICOLOR=1
export LANG="en_US.UTF-8"

# Infinite bash history
HISTSIZE= HISTFILESIZE=

# General aliases
alias vim="nvim"

alias gitdot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias gitpriv='git --git-dir=$HOME/.dotfiles-private/ --work-tree=$HOME'

# Pass completion
source /usr/share/bash-completion/completions/pass

alias mount="sudo mount"
alias umount="sudo umount"
alias eject="sudo eject"

alias shutdown="sudo shutdown -f now"
alias reboot="sudo reboot"
alias suspend="sudo systemctl suspend"

alias mv="mv -i"
alias cp="cp -i -v"

# Adding color
alias ls="ls --color=auto"
alias ll="ls -al --color=auto"
alias grep="grep --color=auto"
alias diff="diff --color=auto"

# Folder aliases
alias Dropbox="cd /home/camilo/Dropbox"
alias Personal="cd /home/camilo/Dropbox/Personal"
alias Projects="cd /home/camilo/Dropbox/Personal/Projects"
alias Notes="cd /home/camilo/Dropbox/Personal/Docs/Notes"
alias Media="cd /home/camilo/Dropbox/Personal/Media"
alias Pictures="cd /home/camilo/Dropbox/Personal/Media/Pictures"

# Paths
PATH=$PATH:$HOME/.bin
