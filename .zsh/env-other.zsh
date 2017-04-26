##
## Environment settings: other
##

DIRCOLORS_DATABASE="${HOME}/.dircolors"

typeset -gx AUBHOME="${HOME}/.aub"
typeset -gx COLORFGBG="white;black"
typeset -gx CVSREAD='yes'
typeset -gx GNUSTEP_LOCAL_ROOT=""
typeset -gx GNUSTEP_SYSTEM_ROOT="/usr/lib/GNUstep"
typeset -gx GNUSTEP_USER_ROOT="${HOME}/.gnustep"
typeset -gx GREP_COLORS="ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36"
typeset -gx HACKDIR="${HOME}/.nethack/playground"
typeset -gx LOCALRES='/etc/resolv.conf'
typeset -gx LOCALDEF="${HOME}/.dig.env"
typeset -gx LPDEST="${local_settings[printer]}"
## The following line sets LS_COLORS
[[ -s ${DIRCOLORS_DATABASE} ]] && eval $(dircolors ${DIRCOLORS_DATABASE}) || eval $(dircolors)
typeset -gx LYNX_CFG="${HOME}/.lynxrc"
typeset -gx MAILCAPS="${HOME}/.mailcap:${HOME}/.mailcap_mutt:/etc/mailcap"
typeset -gx MAILDIR="/var/mail/${USER}"
typeset -gx MANPATH=""
typeset -gx MANSECT='1:2:3:4:5:6:7:8:9'
typeset -gx MANWIDTH="79"
## Disable Indic/CJK locale support in Mozilla products for faster rendering
typeset -gx MOZ_DISABLE_PANGO='1'
typeset -gx MOZILLA_HOME='/usr/lib/mozilla'
typeset -gx MUTTALIAS_FILES='alias.muttrc'
typeset -gx MUTT_DIRECTORY="${HOME}/.mutt"
typeset -gx MYTEMP="${HOME}/.temp/.tmp"
typeset -gx NETHACKDIR="${HACKDIR}"
typeset -gx NETHACKOPTIONS="${HOME}/.nethack/${USER}.nethackrc"
typeset -gx NNTPSERVER="${local_settings[nntp-server]}"
typeset -gx OPSCODE_USER="${local_settings[opscode-user]}"
typeset -gx PARINIT='rTbgqR B=.,?_A_a Q=+s>|'
typeset -gx PRINTER="${local_settings[printer]}"
typeset -gx PYTHONPATH="${HOME}/.python/site-packages:${HOME}/.local/lib/python2.7/site-packages:${PYTHONHOME}"
#typeset -gx TERM='linux'
#typeset -gx TERM="`tset - -Q -m 'unknown:?linux' -m 'su:?linux' -m 'dumb:?vt100' -m 'network:?linux' -m ':linux'`"
#typeset -gx TERM="`tset - -Q -m 'dumb:?vt100' -m ':linux'`"
## This is superseded by ~/.toprc
#typeset -gx TOP='-i'
#typeset -gx XTERMCMD='/usr/bin/konsole'
#typeset -gx XTERMCMD='/usr/bin/xterm'
#typeset -gx XTERMCMD='/usr/bin/xfce4-terminal'

## EOF
########
