## Zsh startup script for login shells

## Record login
echo "Login at $(date) on $(tty) from ${REMOTEHOST}" >> ${HOME}/.logins

## Enable inter-TTY messaging
mesg y

## Create user temp directory if it doesn't exist
[ -d ${HOME}/.temp/.tmp ] || mkdir -m 0700 -p ${HOME}/.temp/.tmp

## Set the backspace key to actually backspace (what a concept)
stty erase 

## Background jobs suspend when they have output, instead of sending it to the
## terminal
#stty tostop

## Give a summary of new mail
#/usr/contrib/mh/bin/msgchk -h ${local_settings[imap-server]}
#frm -MSq

## List online users
w

## Show MOTD if it's new and would normally be suppressed by .hushlogin
if [ -e ${HOME}/.hushlogin ] && diff -q /etc/motd ${HOME}/.motd-reference >/dev/null 2>&1; then
  cat /etc/motd
  cp -f /etc/motd ${HOME}/.motd-reference
fi

## Local configurations
. ${ZDOTDIR}/local/zlogin/*.zsh

## EOF
########
