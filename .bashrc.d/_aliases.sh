# Sets up aliases

# -- ls
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'

# -- grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# -- cd
alias dev='cd $HOME/Documenti/Development'
alias cl='cd $HOME/Documenti/Clienti'

# -- git
alias g='git'
alias gr='cd $(git rev-parse --show-toplevel)'

# -- dotfiles management
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# -- json prettify
prettyJSON() {
    cat "$1" | jq ."$2" -C | less -R
}
alias jqq='prettyJSON'