# Sets up PS1
# es --> [ ^-^ ] Development
PS1="~ \n[ \[$(tput sgr0)\]\[\033[38;5;9m\]^-^\[$(tput sgr0)\]\[\033[38;5;15m\] ] \[$(tput sgr0)\]\[\033[38;5;45m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]"
#PS1="\[\e]2;$PWD\[\a\]\[\e]1;\]$(basename "$(dirname "$PWD")")/\W\[\a\]${BOLD}\$(usernamehost)\[$GREEN\]\w\$(git_info)\[$WHITE\]\n\$ \[$RESET\]"