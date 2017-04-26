## Zsh startup for _all_ shells

## Local settings to allow main configuration to be generalized
source ${ZDOTDIR}/local.zsh

## Check to see if the current TTY is a local console or not
[[ ${TTY} =~ /dev/tty([0-9]+) ]] && localConsole=1
localConsoleNumber=${match[1]}

## Set umask
umask 0077

## Local configurations
for local_config_file in ${ZDOTDIR}/local/zshenv/*.zsh(N); do
    . ${local_config_file}
done

## EOF
######
