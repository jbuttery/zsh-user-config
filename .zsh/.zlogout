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
for local_config_file in ${ZDOTDIR}/local/zlogout/*.zsh(N); do
    . ${local_config_file}
done

## EOF
########
