OSTYPE=$(uname)

## oh my zsh
source ~/.zshrc-files/oh_my_zsh.sh

## homebrew
if [[ "$OSTYPE" == "Darwin" ]]; then
    source ~/.zshrc-files/homebrew.sh
fi

## general
source ~/.zshrc-files/general.sh

## nvm
source ~/.zshrc-files/nvm.sh


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
