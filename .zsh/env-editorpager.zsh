##
## Environment settings: editors and pagers
##

## Editor
typeset -gx EDITOR='vim'
typeset -gx VISUAL="${EDITOR}"

typeset -gx CVSEDITOR="${EDITOR}"
typeset -gx QMHEDITOR="${EDITOR}"
typeset -gx EDITOR_GPGEDIT="${EDITOR}"

## Setup for less(1)
#eval $( /usr/bin/lessfile )
eval $( /usr/bin/lesspipe )

#typeset -gx LESS='WiNMX'
#typeset -gx LESS="-i -j4 -X -I -R -W -O${HOME}/.less-out$ -P?e[1;31m.?f%f:\<stdin\>.?l #L# %lt?L/%L lines.?p #P# %pt\%. #S# %b?B/%B: bytes above.?m #F# %i/%m>%x.?e?n: ## [EOF]..?n ## v to edit.?e[0;0m.$ "
#typeset -gx LESS="--ignore-case --jump-target=4 --no-init --IGNORE-CASE --RAW-CONTROL-CHARS --HILITE-UNREAD --quit-at-eof -O${HOME}/.less-out$ --prompt=?e[1;31m.?f%f:\<stdin\>.?l L\:%lt?L/%L. B\:%b?B/%B.?p (%pt\%).?m F\:%i/%m>%x.?e?n: ## [EOF]..?n ## v to edit.?e[0;0m.$ "
typeset -gx LESS="--ignore-case --jump-target=4 --no-init --IGNORE-CASE --RAW-CONTROL-CHARS --HILITE-UNREAD -O${HOME}/.less-out$ --prompt=?e[1;31m.?f%f:\<stdin\>.?l L\:%lt?L/%L. B\:%b?B/%B.?p (%pt\%).?m F\:%i/%m>%x.?e?n: ## [EOF]..?n ## v to edit.?e[0;0m.$ "
typeset -gx LESSANSIENDCHARS="m"
typeset -gx LESSBINFMT='*u[%X]'
#typeset -gx LESSCHARSET=latin1
typeset -gx LESSCHARSET=UTF-8
typeset -gx LESSEDIT="%E ?lm+%lm. %f"
typeset -gx MANLESS="${LESS}"
typeset -gx LESS_TERMCAP_mb=$'\E[01;31m'
typeset -gx LESS_TERMCAP_md=$'\E[01;37m'
typeset -gx LESS_TERMCAP_me=$'\E[0m'
typeset -gx LESS_TERMCAP_se=$'\E[0m'
typeset -gx LESS_TERMCAP_so=$'\E[01;44;33m'
typeset -gx LESS_TERMCAP_ue=$'\E[0m'
typeset -gx LESS_TERMCAP_us=$'\E[01;32m'

## Define pagers for various things
typeset -gx PAGER='less'

typeset -gx DEBUGFS_PAGER='cat'
#typeset -gx GIT_PAGER="${PAGER}"
typeset -gx MANPAGER="${PAGER}"
typeset -gx QMHPAGER="${PAGER}"
typeset -gx HACKPAGER="${PAGER}"
typeset -gx METAMAIL_PAGER="${PAGER}"

## EOF
########
