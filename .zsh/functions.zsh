#!/usr/bin/zsh

##
## Zsh "special" functions
##

## As of Zsh 4.3.4 there are reserved arrays to allow you to assign multiple
## functions to the same "hook". Not sure if they can take arguments though,
## so the function has to be specialized to the purpose.  Helpful tip...this
## contains the command:
##
## $(history ${HISTCMD} | cut -b 7-)

typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions

function setWindowTitleAndIconName() {
  ## This pattern will print just the command name rather than the whole line
  #print -Pn "\033]0;${${(@)${(z)1}:#*[[:punct:]]*}%% *}\007"
  print -Pn "\e]0;${*}\a"
}

function setWindowTitle() {
  ## This pattern will print just the command name rather than the whole line
  #print -Pn "\033]0;${${(@)${(z)1}:#*[[:punct:]]*}%% *}\007"
  print -Pn "\e]1;${*}\a"
}

function setIconName() {
  ## This pattern will print just the command name rather than the whole line
  #print -Pn "\033]0;${${(@)${(z)1}:#*[[:punct:]]*}%% *}\007"
  print -Pn "\e]2;${*}\a"
}

function setScreenTitle() {
  if [[ "${STY}" != "" ]]; then
    local commandName=$(echo ${*} | sed -r 's/^((sudo|time|(io)?nice) )+//; s/ .*//')
    echo -n "k${commandName}\\"
  fi
}

## Executed whenever the current directory changes
#function chpwd() {}

## Executed every $PERIOD seconds (just before printing a prompt)
#function periodic() {}

## Executed just before displaying the prompt
function my_precmd() {
  local titleString="%n@%m:%3~"
  [ ! ${localConsole:-0} = 1 ] && setWindowTitleAndIconName "${titleString}"
  setScreenTitle "${(%)titleString}"
  prompt-setup
}

precmd_functions+=my_precmd

## Executed just before running each command
function my_preexec() {
  local titleString="${1}"
  [ ! ${localConsole:-0} = 1 ] && setWindowTitleAndIconName "${titleString}"
  setScreenTitle "${titleString}"
}

preexec_functions+=my_preexec

## Executed just before a line is added to the history
#function zshaddhistory() {
#  print -sr -- ${1%%$'\n'}
#  fc -p .zsh_local_history
#}

## Executed just before a normal exit of the main shell (ie, not before "exec")
#function zshexit() {}

## Executed whenever a command has a non-zero exit status (for sublists -- with
## || or &&, etc -- only the last command in the sublist will trigger this)
#function trapzerr()  {}

## Executed just before each command (if option debug_before_cmd is set), else
## just after
#function trapdebug() {}

## Executed when the current (i.e., when the function is defined) shell or
## function exits.  "$?" initially set to the exit status of the shell/function
#function trapexit() {}

## Executed every TMOUT seconds
function TRAPALRM() {
    ## If this parameter is nonzero, the shell will receive an ALRM signal if a
    ## command is not entered within the specified number of seconds after
    ## issuing a prompt.  If there is a trap on SIGALRM, it will be executed
    ## and a new alarm is scheduled using the value of the TMOUT parameter
    ## after executing the trap.  If no trap is set, and the idle time of the
    ## terminal is not less than the value of the TMOUT parameter, zsh
    ## terminates.  Otherwise a new alarm is scheduled to TMOUT seconds after
    ## the last keypress.
    zle reset-prompt
}

##
## ZLE functions
##

function insert-last-line-except-last-word() { zle insert-last-word -- 1 -2 }

##
## Misc
##

function venv() {
    source ${HOME}/venv/${1}/bin/activate
}

## EOF
########
