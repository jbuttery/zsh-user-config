## Changing directories

unsetopt auto_cd
unsetopt auto_pushd
unsetopt cdable_vars
unsetopt chase_dots
unsetopt chase_links
  setopt pushd_ignore_dups
unsetopt pushd_minus
unsetopt pushd_silent
unsetopt pushd_to_home

## Completion

  setopt always_last_prompt
unsetopt always_to_end
  setopt auto_list
  setopt auto_menu
unsetopt auto_name_dirs
  setopt auto_param_keys
  setopt auto_param_slash
  setopt auto_remove_slash
unsetopt bash_auto_list
unsetopt complete_aliases
unsetopt complete_in_word
unsetopt glob_complete
  setopt hash_list_all
  setopt list_ambiguous
  setopt list_beep
unsetopt list_packed
unsetopt list_rows_first
  setopt list_types
unsetopt menu_complete
unsetopt rec_exact

## Expansion and Globbing

  setopt bad_pattern
  setopt bare_glob_qual
unsetopt brace_ccl
  setopt case_glob
  setopt case_match
unsetopt csh_null_glob
  setopt equals
  setopt extended_glob
  setopt glob
unsetopt glob_assign
unsetopt glob_dots
unsetopt glob_subst
unsetopt hist_subst_pattern
unsetopt ignore_braces
unsetopt ksh_glob
unsetopt magic_equal_subst
  setopt mark_dirs
  setopt multibyte
  setopt nomatch
unsetopt null_glob
  setopt numeric_glob_sort
unsetopt rc_expand_param
  setopt rematch_pcre
unsetopt sh_glob
  setopt unset
unsetopt warn_create_global

## History

  setopt append_history         ## Append to history file (instead of overwriting)
  setopt bang_hist              ## Enable "!" style history expansion
  setopt extended_history       ## Write start/duration timestamps in history file
unsetopt hist_allow_clobber
  setopt hist_beep
  setopt hist_expire_dups_first ## Remove duplicate history file entries first
unsetopt hist_fcntl_lock
  setopt hist_find_no_dups
unsetopt hist_ignore_all_dups
  setopt hist_ignore_dups
  setopt hist_ignore_space
unsetopt hist_no_functions
unsetopt hist_no_store
unsetopt hist_reduce_blanks
  setopt hist_save_by_copy
  setopt hist_save_no_dups
unsetopt hist_verify
  setopt inc_append_history
unsetopt share_history

## Initialisation

unsetopt all_export
unsetopt global_export
#  setopt global_rcs
#  setopt rcs

## Input/Output

  setopt aliases
  setopt clobber
unsetopt correct
unsetopt correct_all
unsetopt dvorak
  setopt flow_control
  setopt ignore_eof
  setopt interactive_comments
  setopt hash_cmds
  setopt hash_dirs
  setopt mail_warning
unsetopt path_dirs
unsetopt print_eight_bit
unsetopt print_exit_value
unsetopt rc_quotes
unsetopt rm_star_silent
unsetopt rm_star_wait
unsetopt short_loops
unsetopt sun_keyboard_hack

## Job Control

  setopt auto_continue
unsetopt auto_resume
unsetopt bg_nice
  setopt check_jobs
  setopt hup
  setopt long_list_jobs
  setopt monitor
  setopt notify

## Prompting

unsetopt prompt_bang
  setopt prompt_cr
  setopt prompt_sp              ## See "PROMPT_EOL_MARK"
  setopt prompt_percent
unsetopt prompt_subst
unsetopt transient_rprompt

## Scripts and Functions

unsetopt c_bases
unsetopt c_precedences
unsetopt debug_before_cmd
unsetopt err_exit
unsetopt err_return
  setopt eval_lineno
  setopt exec
  setopt function_argzero
unsetopt local_options
unsetopt local_traps
  setopt multi_func_def
  setopt multios
unsetopt octal_zeroes
unsetopt typeset_silent
unsetopt verbose
unsetopt xtrace

## Shell Emulation

unsetopt bash_rematch
unsetopt bsd_echo
unsetopt csh_junkie_history
unsetopt csh_junkie_loops
unsetopt csh_junkie_quotes
unsetopt csh_nullcmd
unsetopt ksh_arrays
unsetopt ksh_autoload
unsetopt ksh_option_print
unsetopt ksh_typeset
unsetopt ksh_zero_subscript
unsetopt posix_aliases
unsetopt posix_builtins
unsetopt posix_identifiers
unsetopt sh_file_expansion
unsetopt sh_nullcmd
unsetopt sh_option_letters
unsetopt sh_word_split
unsetopt traps_async

## Zle

  setopt beep
unsetopt combining_chars
  setopt emacs                  ## Prefer "bindkey -e"
unsetopt overstrike
unsetopt single_line_zle
unsetopt vi                     ## Prefer "bindkey -e"
  setopt zle

## EOF
########
