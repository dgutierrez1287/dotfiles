OSTYPE=$(uname)

## oh my zsh
source ~/.zshrc-files/oh_my_zsh.sh

## homebrew
if [[ "$OSTYPE" == "Darwin" ]]; then
    source ~/.zshrc-files/homebrew.sh
fi

enabled_features=$(cat ~/.tool_config.json | jq -r '.toolsEnabled.[]')

## general
source ~/.zshrc-files/general.sh

## neovim
feature_test=$(echo $enabled_features | grep "neovim")
if [[ -n $feature_test ]]; then
    echo "neovim enabled"
    source ~/.zshrc-files/neovim.sh
fi
unset feature_test

## python
feature_test=$(echo $enabled_features | grep "python")
if [[ -n $feature_test ]]; then
    echo "python enabled"
    source ~/.zshrc-files/pyenv.sh
fi
unset feature_test

# golang
feature_test=$(echo $enabled_features | grep "go")
if [[ -n $feature_test ]]; then
    echo "golang enabled"
    source ~/.zshrc-files/goenv.sh
fi
unset feature_test

# java
feature_test=$(echo $enabled_features | grep "java")
if [[ -n $feature_test ]]; then
    echo "java enabled"
    source ~/.zshrc-files/jenv.sh
fi
unset feature_test

# mobile dev
feature_test=$(echo $enabled_features | grep "mobile_dev")
if [[ -n $feature_test ]]; then
    echo "mobile dev enabled"
    source ~/.zshrc-files/flutter.sh
    source ~/.zshrc-files/mobile_dev.sh
fi
unset feature_test

# terraform
feature_test=$(echo $enabled_features | grep "terraform")
if [[ -n $feature_test ]]; then
    echo "terraform enabled"
    source ~/.zshrc-files/tf_env.sh
fi
unset feature_test

# packer
feature_test=$(echo $enabled_features | grep "packer")
if [[ -n $feature_test ]]; then
    echo "packer enabled"
    source ~/.zshrc-files/pkenv.sh
fi
unset feature_test

# node
feature_test=$(echo $enabled_features | grep "node")
if [[ -n $feature_test ]]; then
    echo "node enabled"
    source ~/.zshrc-files/nvm.sh
fi
unset feature_test

# ruby
feature_test=$(echo $enabled_features | grep "ruby")
if [[ -n $feature_test ]]; then
    echo "ruby enabled"
    source ~/.zshrc-files/rbenv.sh
fi
unset feature_test

# ssh config
source ~/.zshrc-files/ssh.sh

