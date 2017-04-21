function prompt-setup() {

  typeset -A altchar
  set -A altchar ${(s..)terminfo[acsc]}
  local setCharset="%{$terminfo[enacs]%}"
  local shiftIn="%{$terminfo[smacs]%}"
  local shiftOut="%{$terminfo[rmacs]%}"
  local bar=${altchar[q]:--}
  local uLCorner=${altchar[l]:--}
  local lLCorner=${altchar[m]:--}
  local lRCorner=${altchar[j]:--}
  local uRCorner=${altchar[k]:--}
  local noStyle="%F{none}%b%s%u"

  ## Collect information
  effectiveUsername=$(id -un)
  realUsername=$(id -run)

  ## Am I running in a (local) virtual console?
  if tty | grep -qx '/dev/tty[0-9]\+'; then
    IS_VIRTUAL_CONSOLE=1
  else
    IS_VIRTUAL_CONSOLE=0
  fi

  ## Red prompt if I'm root, cyan if I'm effectively some other user,
  ## green otherwise
  case ${effectiveUsername} in
    root)            local baseColor="%F{red}%B"   ;;
    ${realUsername}) local baseColor="%F{green}%B" ;;
    *)               local baseColor="%F{cyan}%B"  ;;
  esac

  ## Colors for different prompt elements
  pathColor="%F{cyan}%B"
  ttyColor="%F{magenta}%B"
  promptCharColor="%F{white}"
  exitStatusColor="%F{red}%B"
  backgroundJobsColor="%F{yellow}%B"
  historyColor="%F{green}%B"
  timeDateColor="%F{yellow}%B"
  pythonVirtualEnvColor="%F{magenta}%B"

  ## This provides the $(git_super_status) functionality
  source "${ZDOTDIR}/git-prompt/zshrc.sh"
  typeset -g ZSH_THEME_GIT_PROMPT_NOCACHE=1

  ## Retrieve Python virtual environment, if present
  #if [[ -n ${VIRTUAL_ENV} ]]; then
  #  pythonVirtualEnv=\(${pythonVirtualEnvColor}PV:$(basename ${VIRTUAL_ENV})${baseColor}\)${shiftIn}${bar}${shiftOut}
  #fi
  [[ -n ${VIRTUAL_ENV} ]] && pythonVirtualEnv=\(${pythonVirtualEnvColor}PV:$(basename ${VIRTUAL_ENV})${baseColor}\)${shiftIn}${bar}${shiftOut} || unset pythonVirtualEnv

##
## APM detection
##

#if which apm > /dev/null; then
#    local power=$(apm | sed -e "s/.*: \([1-9][0-9]*%\) */\1%/")
#    local APM="$RED${power}$LIGHT_BLUE:"
#else
#    local APM=""
#fi

local fill=""
local pwdlen=""

let local promptsize=$(print -Pn -- "--(%n@%m:%l)---()--" | wc -c | tr -d " ")
let local pwdsize=$(print -Pn -- "%~" | wc -c | tr -d " ")

local termWidth
(( termWidth = ${COLUMNS} - 1 ))

if [[ "${promptsize} + ${pwdsize}" -gt ${termWidth} ]]; then
   let pwdlen="${termWidth} - ${promptsize}"
else
   let fillsize="${termWidth} - (${promptsize} + ${pwdsize})"
   while [[ ${fillsize} -gt 0 ]]
   do
      fill="${fill}${bar}"
      let fillsize=${fillsize}-1
   done
fi

## Main prompt
PROMPT="%{${setCharset}${baseColor}${shiftIn}%}${uLCorner}${bar}%{${shiftOut}%}(\
%{${pathColor}%}%$pwdlen<...<%~%<<\
%{${baseColor}%})%{${shiftIn}%}${bar}${bar}${fill}${bar}%{${shiftOut}%}(\
%{${ttyColor}%}%B%n@%m:%l\
%{${baseColor}%})%{${shiftIn}%}${bar}${uRCorner}%{${shiftOut}%}\

%{${baseColor}${shiftIn}%}${lLCorner}${bar}%{${shiftOut}%}\
$(git_super_status)%{${baseColor}%}\
${pythonVirtualEnv}%{${baseColor}%}\
%(?..%{${baseColor}%}(%{${exitStatusColor}%}%B%?%{${baseColor}%}%)%{${shiftIn}${bar}${shiftOut}%1G%})\
%(1j.%{${baseColor}%}[%{${backgroundJobsColor}%}%B%j%{${baseColor}%}]%{${shiftIn}%}${bar}%{${shiftOut}%}.)\
(%{${promptCharColor}%}%B%#%{${baseColor}%})\
%{%F{none}%b%} "

## Right-justified prompt
RPROMPT="%{${setCharset}%}%{${baseColor}%}(%{${historyColor}%}%!%{${baseColor}%})%{${shiftIn}%}%{${bar}%1G%}%{${shiftOut}%}(%{${timeDateColor}%}%B%D{%H:%M:%S %a%Y%m%d}%{${baseColor}%})%{${shiftIn}%}%{${bar}${lRCorner}${shiftOut}${noStyle}%2G%}"

## Tweak for consoles (add spaces to line things up; don't need
## these in X11 terminals for some reason
if [[ ${IS_VIRTUAL_CONSOLE} -eq 1 ]]; then
  PROMPT="${PROMPT} "
  RPROMPT="${RPROMPT} "
fi

## Secondary prompt (when the shell needs more information
PS2="%{${baseColor}${shiftIn}${lLCorner}${bar}${shiftOut}%2G%}(%{${baseColor}%}%_)%{${noStyle}%} "

## Right-justified secondary prompt
#RPS2=''

## Selection prompt (used within select loops)
PS3="%{${baseColor}${shiftIn}${bar}${bar}${shiftOut}%2G%}(%{${baseColor}%}?#)%{${noStyle}%} "

## Execution trace prompt
PS4="${baseColor}+ %N:%i> %F{none}"

## Spelling correction prompt
SPROMPT="%{${baseColor}${shiftIn}${lLCorner}${bar}${shiftOut}%2G%}(Replace %R with %r ?)%{${noStyle}%} "

}
