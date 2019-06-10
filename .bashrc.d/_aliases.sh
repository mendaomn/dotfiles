# Sets up aliases

# -- ls
# alias ls='ls --color=auto'
# alias ll='ls -alF'
# alias la='ls -A'

# -- grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# -- cd
alias dev='cd $HOME/Documents/Development'

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

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'

# default to Java 8
java8

# -- curl with timing info
curl_time() {
    curl -so /dev/null -w "\
   namelookup:  %{time_namelookup}s\n\
      connect:  %{time_connect}s\n\
   appconnect:  %{time_appconnect}s\n\
  pretransfer:  %{time_pretransfer}s\n\
     redirect:  %{time_redirect}s\n\
starttransfer:  %{time_starttransfer}s\n\
-------------------------\n\
        total:  %{time_total}s\n" "$@"
}

# Kubernetes
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgpw='watch kubectl get pods'
alias kgn='kubectl get nodes'
alias kgnw='watch kubectl get nodes'

# Switch kubernetes context to STAGING
kstaging() {
  config_path=~/.kube/config
  staging_config_path=~/.kube/config.staging

  cp $staging_config_path $config_path

  echo "You are now in the STAGING context"
}

# Switch kubernetes context to PROD
kprod() {
  config_path=~/.kube/config
  prod_config_path=~/.kube/config.prod

  cp $prod_config_path $config_path

  echo "You are now in the PROD context"
}
