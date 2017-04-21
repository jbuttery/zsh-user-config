## Zsh's built-in version control system info handler
##
## I don't use this (I use the external "git-prompt" instead) but I'll keep
## this in case I ever need it

autoload -Uz vcs_info

zstyle ':vcs_info:*'              enable             'git'
zstyle ':vcs_info:*'              check-for-changes  true
#zstyle ':vcs_info:*'              formats            '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
#zstyle ':vcs_info:*'              actionformats      '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*'              formats            '%F{3}([%r/%b:%i]%F{1}%u%c%F{3})%f '
zstyle ':vcs_info:*'              actionformats      '%F{3}([%r/%b:%i|%a]%F{1}%u%c%F{3})%f '

zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat       '%b%F{2}:%F{3}%r'
zstyle ':vcs_info:*'              patch-format       '%F{1}(   [%b]%u%c    |  patch-format| i%i c%c u%u R%R r%r S%S m%m p%p u%u n%n c%c)%f '
zstyle ':vcs_info:*'              nopatch-format     '%F{1}(   [%b]%u%c    |nopatch-format| i%i c%c u%u R%R r%r S%S m%m p%p u%u n%n c%c)%f '

setopt PROMPT_SUBST
add-zsh-hook precmd vcs_info

## EOF
########
