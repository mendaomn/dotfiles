# .bash_profile

# If .bash_profile exists, bash doesn't read .profile
if [[ -f ~/.profile ]]; then
  . ~/.profile
fi

# If the shell is interactive and .bashrc exists, get the aliases and functions
if [[ $- == *i* && -f ~/.bashrc ]]; then
    . ~/.bashrc
fi

# Set up bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Set java8 as default
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
