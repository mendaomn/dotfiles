# Execute every file in .bashrc.d
# -- .bashrc is now modular
for file in ~/.bashrc.d/*; do . "$file"; done

####################################
#    END OF MANUAL INTERVENTION    #
####################################

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
