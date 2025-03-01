" get correct homedir for mac and linux
let home_dir = $HOME

if has('macunix') 
    let home_dir = $HOME
endif

" Node environment
"
let node_bin = '/.nvm/versions/node/v20.11.0/bin'
let g:node_host_prog = home_dir + node_bin + '/node'

" python environment
let python_3_bin = '/.pyenv/versions/neovim-3_10/bin'
let g:python3_host_prog = home_dir + python_3_bin + '/python'

" plugins install
call plug#begin()

" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp', { 'branch': 'main' }
Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' }
Plug 'ray-x/lsp_signature.nvim'
Plug 'onsails/lspkind.nvim'

" json
Plug 'gennaro-tedesco/nvim-jqx'

" tree-sitter
Plug 'nvim-treesitter/nvim-treesitter'

" Glow
Plug 'ellisonleao/glow.nvim', { 'branch': 'main' }

" Editor
Plug 'windwp/nvim-autopairs'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Terminal
Plug 'voldikss/vim-floaterm'

" File Operations
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'

" Flutter Dev
Plug 'akinsho/flutter-tools.nvim'
Plug 'stevearc/dressing.nvim'

" Look and Feel
Plug 'glepnir/zephyr-nvim', { 'branch': 'main' }
Plug 'marko-cerovac/material.nvim', { 'branch': 'main' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'branch': 'main' }

" Language Stuff
Plug 'hashivim/vim-terraform'
Plug 'LnL7/vim-nix'
Plug 'towolf/vim-helm'

" Motion
Plug 'christoomey/vim-tmux-navigator'

" Undo
Plug 'mbbill/undotree'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ThePrimeagen/git-worktree.nvim'

" Comments
Plug 'numToStr/Comment.nvim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'dimaportenko/telescope-simulators.nvim'
Plug 'jonarrien/telescope-cmdline.nvim', { 'branch': 'main' }


call plug#end()

" source neovim configs
source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/autopair.vim
source ~/.config/nvim/config/commands.vim
source ~/.config/nvim/config/float-term.vim
source ~/.config/nvim/config/git.vim
source ~/.config/nvim/config/nvim-tree.vim
source ~/.config/nvim/config/tree-sitter.vim
source ~/.config/nvim/config/nvim-cmp-lsp.vim
source ~/.config/nvim/config/glow.vim
source ~/.config/nvim/config/flutter.vim
source ~/.config/nvim/config/telescope.vim
source ~/.config/nvim/config/tmux-nav.vim
source ~/.config/nvim/config/undotree.vim
source ~/.config/nvim/config/lualine.vim
source ~/.config/nvim/config/bufferline.vim
source ~/.config/nvim/config/comment-nvim.vim
source ~/.config/nvim/config/vim-terraform.vim
source ~/.config/nvim/config/colors.vim
