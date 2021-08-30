#!/usr/bin/env bash

# Install deps for vim

# fd-find install
echo ""
if [[ -z $(apt list --installed | grep "fd-find") ]]; then
    echo "fd-find not found, installing ..."
    sudo apt install fd-find
else
    echo "fd-find already installed, skipping ..."
fi

# bat install
echo ""
if [[ -z $(apt list --installed | grep "bat-musl") ]]; then
    echo "bat-musl not found, installing ..."
    mkdir ./tmp-vim-deps

    pushd ./tmp-vim-deps
        wget https://github.com/sharkdp/bat/releases/download/v0.18.3/bat-musl_0.18.3_amd64.deb \
            -O bat.deb
        
        sudo dpkg -i bat.deb
    popd

    rm -rf ./tmp-vim-deps
else
    echo "bat-musl already installed, skipping ..."
fi

# ripgrep install 
echo ""
if [[ -z $(apt list --installed | grep "ripgrep") ]]; then
    echo "ripgrep not found, installing ..."
    sudo apt install ripgrep
else
    echo "ripgrep already installed, skipping ..."
fi

## lua language server ##
echo ""
echo ""
echo "Installing the lua language server"

# install ninja-build
if [[ -z $(apt list --installed | grep "ninja-build" )]]; then
    echo "ninja-build not found, installing ..."
    sudo apt install ninja-build
else
    echo "ninja-build already installed, skipping ..."
fi


# install the language server
if [[ -z $(ls ${HOME}/utils/lsp/lua-language-server/bin/Linux | grep "lua") ]]; then
    echo "lua-language-server not found, installing ..."
    mkdir -p ${HOME}/utils/lsp

    pushd ${HOME}/utils/lsp
        git clone https://github.com/sumneko/lua-language-server
        
        pushd lua-language-server
            git submodule update --init --recursive

            pushd 3rd/luamake
                ./compile/install.sh
            popd

            ./3rd/luamake/luamake rebuild
        popd

    popd
else
    echo "lua-language-server already installed, skipping ..."
fi
