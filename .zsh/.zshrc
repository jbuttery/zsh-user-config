#!/usr/bin/zsh

## This file is read only by interactive shells
## Things that should only be run once (at login) should go in .zprofile

## Files read before this one
##
## /etc/zsh/zshenv    - All shells
## .zshenv            - All shells
## /etc/zsh/zprofile  - Login shells
## .zprofile          - Login shells
## /etc/zsh/zshrc     - Interactive shells
##
## Files read after this one
##
## /etc/zsh/zlogin    - Login shells
## .zlogin            - Login shells

## [[ -o interactive ]] && echo "This is an interactive shell."
## [[ -o login       ]] && echo "This is a login shell."

##
## Configure the shell itself
##

source ${ZDOTDIR}/autoload.zsh
source ${ZDOTDIR}/options.zsh
source ${ZDOTDIR}/parameters.zsh
source ${ZDOTDIR}/modules.zsh
source ${ZDOTDIR}/named-directories.zsh
source ${ZDOTDIR}/zstyle.zsh
source ${ZDOTDIR}/prompt.zsh
source ${ZDOTDIR}/ulimit.zsh
source ${ZDOTDIR}/zle.zsh
source ${ZDOTDIR}/zstyle.zsh

##
## Set up environment
##

source ${ZDOTDIR}/env-editorpager.zsh
source ${ZDOTDIR}/env-irc.zsh
source ${ZDOTDIR}/env-locale.zsh
source ${ZDOTDIR}/env-other.zsh

##
## Define supporting code
##

source ${ZDOTDIR}/aliases.zsh
source ${ZDOTDIR}/functions.zsh
source ${ZDOTDIR}/traps.zsh

##
## Other things to do for interactive shells
##

## (Re-)initialize the completion system
compinit

## This doesn't seem to be necessary any more, less always does what I want
#eval "$(lesspipe)"

## Load up SSH keys
## This is a simple shell wrapper around keychain that specifies my particular
## key filenames
eval $(${HOME}/bin/keychain-bootstrap)

## Enable libtrash
typeset -gx LD_PRELOAD=/usr/local/lib/libtrash.so

## Show birthdays in the next 14 days
#bdays 14

## How often to send SIGALRM to the shell
## See TRAPALRM in functions.zsh
TMOUT=60

## Local configurations
. ${ZDOTDIR}/local/zshrc/*.zsh

## EOF
########
