## Parameter settings for Zsh

ZDOTDIR="${HOME}/.zsh"  ## This should already be set by /etc/zsh/zshenv

## I'm a little hesitant to fiddle with this
#typeset -g _comp_dumpfile="${ZDOTDIR:-$HOME}/.zcompdump"

#ARGV0='emacs'
BAUD=0
cdpath=( . )
CORRECT_IGNORE='rm'
DIRSTACKSIZE='100'
FCEDIT="${EDITOR}"
fignore=( .out )
fpath=( ${ZDOTDIR}/local/functions ${ZDOTDIR}/local/functions/completion ${ZDOTDIR}/functions ${ZDOTDIR}/functions/completion ${fpath} )
histchars='!^#'
HISTFILE="${ZDOTDIR}/history"
HISTSIZE='1000'
KEYTIMEOUT='40'
LISTMAX='-5'
LOGCHECK='60'
MAIL="/var/spool/mail/${USER}"
MAILCHECK='60'
mailpath=( /var/spool/mail/${USER}\?"New mail in inbox" )
module_path=( /usr/lib/$(uname -p)-linux-gnu/zsh/${ZSH_VERSION} /usr/lib/zsh/${ZSH_VERSION} )
NULLCMD='cat'
path=( ${HOME}/.local/bin ${HOME}/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games )
#POSTEDIT="" ## Editor for fc
PROMPT_EOL_MARK='%B%S%#%s%b'
#psvar=()
READNULLCMD="${PAGER}"
REPORTTIME='20'
SAVEHIST='1000'
TIMEFMT='
Timing statistics for %J
------------------------
%*U -- CPU seconds spent in user mode.
%*S -- CPU seconds spent in kernel mode.
%*E -- Elapsed time in seconds.
%P -- The CPU percentage, computed as (100*%U+%S)/%E.
%W -- Number of times the process was swapped.
%X -- The average amount in (shared) text space used in Kbytes.
%D -- The average amount in (unshared) data/stack space used in Kbytes.
%K -- The total space used (%X+%D) in Kbytes.
%M -- The maximum memory the process had in use at any time in Kbytes.
%F -- The number of major page faults (page needed to be brought from disk).
%R -- The number of minor page faults.
%I -- The number of input operations.
%O -- The number of output operations.
%r -- The number of socket messages received.
%s -- The number of socket messages sent.
%k -- The number of signals received.
%w -- Number of voluntary context switches (waits).
%c -- Number of involuntary context switches.
'
## If this parameter is nonzero, the shell will receive an ALRM signal if a
## command is not entered within the specified number of seconds after issuing
## a prompt. If there is a trap on SIGALRM, it will be executed and a new alarm
## is scheduled using the value of the TMOUT parameter after executing the
## trap. If no trap is set, and the idle time of the terminal is not less than
## the value of the TMOUT parameter, zsh terminates. Otherwise a new alarm is
## scheduled to TMOUT seconds after the last keypress.
#TMOUT='60'
TMPPREFIX="/tmp/zsh-${USER}"
watch=( all )
WATCHFMT='%n %a %l %D %T %(M:%M:)'
WORDCHARS=$'*?_-.[]~=/&;!#$%^(){}<>'

## Configure Zsh's beep
#ZBEEP='\e[?5h\e[?5l'   ## Flash reverse video
#ZBEEP=''             ## Beep
#ZBEEP='\e[?5h\e[?5l' ## Flash reverse video, then beep
#ZBEEP='\e[?5h\e[?5l' ## Beep, then flash reverse video

ZLE_REMOVE_SUFFIX_CHARS=$' \t\n;&|<>'
ZLE_SPACE_SUFFIX_CHARS=$'&|<>'

## EOF
########
