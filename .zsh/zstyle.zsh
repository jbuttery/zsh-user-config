## Styles #####################################################################

## :completion:<caller>:<type>:<context/command>:<argument>:<tag>

## :completion         ## Main style division
## :<caller>           ## Usually blank, can specify a calling function
## :<type>             ## Completer type ("complete", "correct", etc)
## :<context/command>  ## The command being run/completed for
## :<argument>         ## not sure yet
## :<tag>              ## Which types of files can be completed

zstyle ':completion:*' accept-exact false
zstyle ':completion:*' accept-exact-dirs false
zstyle ':completion:*' add-space true
zstyle ':completion:*' ambiguous true
zstyle ':completion:*' assign-list PATH MANPATH MAILCAPS
zstyle ':completion:*' avoid-completer '_expand _old_list _correct _approximate'
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' call-command false
#zstyle ':completion:*' completer _complete _expand _expand_alias _ignored _history
zstyle ':completion:*' completer _complete _expand _expand_alias _ignored
zstyle ':completion:*' disabled false
zstyle ':completion:*' expand true
## think "directores I don't have read access to"...
#zstyle ':completion:*' fake-files '/var:spool2 spool3' '/etc:notdir notdir2' ## files/dirs to complete even when they aren't there
#zstyle ':completion:*' fake-parameters TERM:scalar  ## scalar/array/integer`
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format '%F{blue}%BCompleting %d...%b%f'
zstyle ':completion:*' glob true
zstyle ':completion:*' global true
zstyle ':completion:*' group-name ''
zstyle ':completion:*' group-order 'commands builtins functions'
#zstyle ':completion:*' groups 'group1 group2' ## Group names for completion, built from /etc/group if unset
#zstyle ':completion:*' hosts 'host1.com host2.com' ## Host names for completion, built from /etc/hosts if unset
zstyle ':completion:*' hosts-ports "${local_settings[irc-server]}:${local_settings[irc-port]}"
zstyle ':completion:*' insert-ids menu
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' keep-prefix true
zstyle ':completion:*' last-prompt true
#zstyle ':completion:*' list-colors '${(s.:.)LS_COLORS}'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-packed false
zstyle ':completion:*' list-prompt '%SAt %l (%p): TAB, or char to insert%s'
zstyle ':completion:*' list-rows-first false
#zstyle ':completion:*' matcher-list '' 'r:|[._-]=* r:|=*' 'm:{a-zA-Z}={A-Za-z}' 'm:{a-z}={A-Z} l:|=* r:|=*'
zstyle ':completion:*' menu select=0
zstyle ':completion:*' numbers false
zstyle ':completion:*' original true
#zstyle ':completion:*' ports 'port1 port2' ## Configured from /etc/services if unset
zstyle ':completion:*' prefix-hidden false
zstyle ':completion:*' prefix-needed true
zstyle ':completion:*' range '1200:20'
zstyle ':completion:*' remove-all-dups true
zstyle ':completion:*' select-prompt '%SCurrent selection : %l \(%p\)%s'
zstyle ':completion:*' select-scroll 1
zstyle ':completion:*' single-ignored show
#zstyle ':completion:*' sort false  ## "false" interferes with completing options with alternatives
zstyle ':completion:*' special-dirs false
zstyle ':completion:*' squeeze-slashes false
zstyle ':completion:*' stop true
zstyle ':completion:*' subst-globs-only false
zstyle ':completion:*' substitute true
zstyle ':completion:*' suffix true
zstyle ':completion:*' urls "${ZDOTDIR}/urlcomp"
zstyle ':completion:*' use-compctl false
#zstyle ':completion:*' users "user1 user2" ## Usernames to complete, uses all if unset
zstyle ':completion:*' verbose true
zstyle ':completion:*' word false

## Allow 1 error per 3 chars in approximate completer
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'

## Expand completer inserts all expansions
#zstyle ':completion:*:expand:*' tag-order all-expansions

## Match uppercase from lowercase
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## Offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

## Command for process lists, the local web server details and host completion
zstyle ':completion:*:processes' command 'ps -o pid,s,nice,stime,args'
zstyle ':completion:*:urls' local 'www' '/var/www/htdocs' 'public_html'
#zstyle '*' hosts $hosts

## Filename suffixes to ignore during completion (except after rm command)
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?.c~' '*?.old' '*?.pro'

## Ignore completion functions (until the _ignored completer)
zstyle ':completion:*:functions' ignored-patterns '_*'

zstyle ':completion:*:kill:*'           verbose true
zstyle ':completion:*:kill:*'           command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zstyle ':completion:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

## User-to-host mapping
#zstyle ':completion:*:my-accounts'    users-hosts       ${USER}@host.com ${USER}@host2.com
#zstyle ':completion:*:my-accounts'    users-hosts-ports ${USER}@host.com:22 ${USER}@host2.com:22
#zstyle ':completion:*:other-accounts' users-hosts       otheruser@somehost.com anotheruser@anotherhost.com

## Completion caching
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path "${ZDOTDIR}/compcache-${HOST}"

## Messages/warnings format
zstyle ':completion:*:descriptions' format '%B%U---- %d%u%b'
zstyle ':completion:*:messages' format '%B%U---- %d%u%b'
zstyle ':completion:*:warnings' format '%B%U---- no match for: %d%u%b'

## Describe options in full
zstyle ':completion:*:options' description true
zstyle ':completion:*:options' auto-description '%d'

## Separate matches into groups
zstyle ':completion:*:matches' group true
zstyle ':completion:*:descriptions' format "%B---- %d%b"

zstyle ':completion:*:colors' path /usr/X11R6/lib/X11/rgb.txt

## Hack for Debian to display available (instead of just installed) packages
zstyle ':completion:*:complete:dpkg:option--status-1:*' packageset avail

## EOF
########
