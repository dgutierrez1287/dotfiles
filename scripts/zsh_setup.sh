#!/usr/bin/env bash

# args
dry_run=$1

OSTYPE=$(uname)
USERNAME=$(echo $USER)

if [[ "$OSTYPE" == "Darwin" ]]; then 
    home_dir="/users/${USERNAME}"
else 
    home_dir="/home/${USERNAME}"
fi

# install ohmyzsh
pushd $home_dir

## oh my zsh ##
ls -l "${home_dir}" | grep ".oh-my-zsh"

if [[ $? -eq 0 ]]; then

echo "oh-my-zsh is already installed"

else
    if [[ "$dry_run" == "yes" ]]; then
        echo "oh-my-zsh would have been installed"
    else 
        echo "Installing oh my zsh"
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi
fi


## powerlevel10k ##
zsh_dir="${home_dir}/.oh-my-zsh"

ls -l "${zsh_dir}/custom/themes" | grep "powerlevel10k" > /dev/null

if [[ $? -eq 0 ]]; then

echo "powerlevel10k is already installed"

else 
    if [[ "${dry_run}" == "yes" ]]; then
        echo "powerlevel10k would have been installed"
    else
        echo "installing powerlevel10k theme"
        git clone --depth 1 https://github.com/romkatv/powerlevel10k.git "${zsh_dir}/custom/themes/powerlevel10k" 
    fi
fi

popd

exit 0




