export NVM_DIR="$HOME/.nvm"

if [[ "$OSTYPE" == Darwin ]]; then
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
else
    source $HOME/.nvm/nvm.sh
    [ -s "$HOME/.nvim/nvm.sh" ] && \. "$HOME/.nvm/nvm.sh"
    [ -s "$HOME/.nvm/bash_completion" ] && \. "$HOME/.nvm/bash_completion"  # This loads nvm bash_completion
fi
