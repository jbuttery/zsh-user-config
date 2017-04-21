## Zsh logout script

## Revoke sudo ticket
## This is unnecessary when using per-TTY tickets
#sudo -k

## Record logout
echo "Logout at $(date) on $(tty) from ${REMOTEHOST}" >> ${HOME}/.logins
echo "" >> ${HOME}/.logins

## Clear the screen
clear

## Print an offensive fortune
/usr/games/fortune -o

## Local configurations
. ${ZDOTDIR}/local/zlogout/*.zsh

## EOF
########
