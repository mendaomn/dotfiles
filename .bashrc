# Execute every file in .bashrc.d
# -- .bashrc is now modular
for file in ~/.bashrc.d/*; do . "$file"; done

####################################
#    END OF MANUAL INTERVENTION    #
####################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
