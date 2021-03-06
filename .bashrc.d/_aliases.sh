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
alias ..="cd .."
alias dev='cd $HOME/Documents/Development'

# -- rm
alias rimraf="rm -rf"

# -- git
alias g='git'
alias groot='cd $(git rev-parse --show-toplevel)'

# -- dotfiles management
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# -- npm
alias ni='npm i'
alias nio='npm i --prefer-offline'

# -- json prettify
prettyJSON() {
    cat "$1" | jq ."$2" -C | less -R
}
alias jqq='prettyJSON'

# -- last commmand output

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
alias kgs='kubectl get svc'

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

# Exec into any pod by name
kbash() {
  pod=`kubectl get pods --all-namespaces -o custom-columns=NAME:.metadata.name | grep $1`
  echo "Running shell into: $pod"
  kubectl exec -it $pod bash
}

# -- ssh shortcuts
sshost() {
  ssh amenduni@$1.dnshosting.local
}

# -- core
alias corerun='rimraf target && mvn clean && mvn jetty:run -Pdev -Dhttp.port=8080'
alias coredebug='rimraf target && mvn clean && mvndebug jetty:run -Pdev -Dhttp.port=8080'

# -- sprint
alias week='date +%V'

# -- git flow + trello
gflowstart() {
  git flow feature start $(echo $1 | sed 's!https://trello.com/c/!!' | sed 's!/!-!')
}