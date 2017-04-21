## Zsh Line Editor setup

##
## Default key binding set
##

## Emacs mode
bindkey -e

bindkey ' '   magic-space ## Turn this off with: bindkey -r ' '
bindkey '	' complete-word

##
## Command input highlighting
##

## Default setting for built-in highlighting
#zle_highlight=( region:standout special:standout isearch:underline )

## Built-in highlighting
#zle_highlight=( default:bold region:standout special:fg=red,bg=blue isearch:fg=red )

## Context-sensitive highlighting
source ${ZDOTDIR}/zle-syntax-highlighting/zsh-syntax-highlighting.zsh

##
## Fanciness
##

## Insert the previous (history) line, except for the last "word"
## Key binding: Alt-Shift-.
#function      insert-previous-history-line-except-last-word() { zle up-history ; zle backward-word ; zle kill-word }
#zle        -N insert-previous-history-line-except-last-word
function      insert-previous-history-line-except-last-word() { LBUFFER+="${${(z):-$history[$((HISTNO-1))]}[1,-2]} " }
zle        -N insert-previous-history-line-except-last-word
bindkey '\E>' insert-previous-history-line-except-last-word

## While in vi mode, use "KJ" to go to normal mode
bindkey -M viins KJ vi-cmd-mode

## This allows you to invoke a full editor on the current command line
## Key binding: Alt-e
autoload -U   edit-command-line
zle -N        edit-command-line
bindkey '\Ee' edit-command-line

## Bind Alt-r to reverse history search (in addition to the existing Ctrl-r)
bindkey '\Er' history-incremental-pattern-search-backward

## EOF
########
