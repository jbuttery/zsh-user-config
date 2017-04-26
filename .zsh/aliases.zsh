## Fun with ls
alias l='ls --color -F'
alias ll='ls --color -lhF'
alias la='ls --color -AF'
alias lla='ls --color -lhAF'
alias lld='ls --color -lhFd'
alias l1='ls --color -1F'
alias l1a='ls --color -1AF'

## Fun with cd
alias cd..='cd ..'
alias cd/='cd /'

## Miscellaneous
alias axine="aaxine -extended -eight -dim -bold -reverse -normal -boldfont -inverse -width 175 -height 79 ${*}"
alias dfx='df --human-readable --print-type --exclude-type=tmpfs --exclude-type=devtmpfs --exclude-type=debugfs --portability | column -t'
alias fics="xboard -ics -icshost freechess.org -icsport 5000 -colorize -icslogon ${HOME}/.icsrc"
alias grep="grep --color=auto --binary-files=binary --directories=recurse"
alias grep-nobin='--color=auto --binary-files=binary --directories=recurse --exclude="*.o" --exclude="a.out" --exclude="*.so" --exclude="*.ko"'
alias hist="fc -liD"
alias histadd="fc -AI"
alias ppid="ps --no-header -o ppid"
alias pps="ps -www -o user,pid,%cpu,%mem,vsz,rss,tty,stat,start_time,time,command"
alias strings="strings -a"

## Recover a terminal hosed by control characters
alias unfk="print -n c"
alias unfk2="stty sane ; tput sgr0; tput reset"

## Bell on/off
alias bellon="echo -ne '\e[10;750] \e[11;125]'" ## Default 10:750 11:125
alias bellon_x="xset b 100 2000 25"             ## Default "50 400 100"
alias belloff="echo -ne '\e[11;0]'"             ## Turn off in console (dur=0)
alias belloff_x="xset -b"                       ## Turn off in X

## Just for fun
alias :wq="echo Does this look like vi to you\?"
alias $'\r'="echo Bare carriage return detected."
alias gbeep="echo -n "

## Commands where globbing is just more trouble than it's worth
alias find="noglob /usr/bin/find"
alias gb="noglob gb"
alias snews="noglob ${HOME}/bin/snews"
alias whence="noglob builtin whence"

## Commands whose arguments will never exist
alias mkdir="nocorrect mkdir"

## Automatically open certain files when typing the filename alone
#alias -s {c,cc,cpp,h,hpp,txt}='vim'

## EOF
########
