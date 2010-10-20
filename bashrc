PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=always'
    alias egrep='egrep --color=auto'
    alias ack-grep='ack-grep -a --color'
fi

alias ll='ls -la'
alias vi='vim'
alias less='less -Ri'
alias bashrc='vi ~/.bashrc && source ~/.bashrc'
alias rsync='rsync --exclude .svn'

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export HISTSIZE=10000
export PATH=$PATH:~/bin

function psg {
    ps auxww | egrep --color=always "($1|%CPU)" | grep -v grep
}

function pss {
    ps auxwwf | less
}
