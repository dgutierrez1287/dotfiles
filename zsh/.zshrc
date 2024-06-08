OSTYPE=$(uname)

## oh my zsh
source ~/.zshrc-files/oh_my_zsh.sh

## homebrew
if [[ "$OSTYPE" == "Darwin" ]]; then
    source ~/.zshrc-files/homebrew.sh
fi

## general
source ~/.zshrc-files/general.sh

## neovim
source ~/.zshrc-files/neovim.sh

# ssh config
source ~/.zshrc-files/ssh.sh

# pyenv config
source ~/.zshrc-files/pyenv.sh

# goenv config
source ~/.zshrc-files/goenv.sh

# tfenv config
source ~/.zshrc-files/tf_env.sh

# pkenv config
source ~/.zshrc-files/pkenv.sh

## nvm
source ~/.zshrc-files/nvm.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


