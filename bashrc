PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=always'
    alias grep='grep --color=auto'
    alias egrep='egrep --color=auto'
    alias ack-grep='ack-grep --pager="less -Ri" -a --color'
fi

alias ll='ls -la'
alias vi='vim'
alias less='less -Ri'
alias bashrc='vi ~/.bashrc && source ~/.bashrc'

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export PATH=$PATH:~/bin

function psg {
    ps auxww | egrep "($1|%CPU)" | grep -v grep
}

function pss {
    ps auxwwf | less
}
