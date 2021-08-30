#!/usr/bin/env bash

# Install deps for vim

# fd-find install
if [[ -z $(apt list --install | grep "fd-find") ]]; then
    echo "fd-find not found, installing ..."
    apt install fd-find
else
    echo "fd-find already installed, skipping ..."
fi

# bat install
if [[ -z $(apt list --install | grep "bat-musl") ]]; then
    echo "bat-musl not found, installing ..."
    mkdir ./tmp-vim-deps

    pushd ./tmp-vim-deps
        wget https://github.com/sharkdp/bat/releases/download/v0.18.3/bat-musl_0.18.3_amd64.deb \
            -O bat.deb
        
        dpkg -i bat.deb
    popd

    rm -rf ./tmp-vim-deps
else
    echo "bat-musl already installed, skipping ..."
fi

# ripgrep install 
if [[ -z $(apt list --install | grep "ripgrep") ]]; then
    echo "ripgrep not found, installing ..."
    apt install ripgrep
else
    echo "ripgrep already installed, skipping ..."
fi

# lua language server
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
