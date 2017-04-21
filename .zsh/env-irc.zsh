##
## Environment settings: IRC
##

typeset -gx IRCFINGER="${local_settings[irc-finger]}"
typeset -gx IRCNAME="${local_settings[irc-name]}"
typeset -gx IRCNICK="${local_settings[irc-nickname]}"
typeset -gx IRCOPERNICK="${local_settings[irc-nickname]}"
typeset -gx IRCPATH="${HOME}/.BitchX/scripts:${HOME}/.irc/scripts"
typeset -gx IRCPORT="${local_settings[irc-server-port]}"
typeset -gx IRCRC="${HOME}/.irc/epic.rc"
typeset -gx IRCSERVER="${local_settings[irc-server]}:${local_settings[irc-server-port]}"
typeset -gx IRCUSER="${local_settings[irc-ident]}"
typeset -gx IRCUMODE="+gisw 8191"
typeset -gx IRC_SERVERS_FILE="${HOME}/.irc/servers"

## EOF
########
