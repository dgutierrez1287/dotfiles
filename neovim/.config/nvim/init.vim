" line numbers
set number relativenumber

" leader
let mapleader = " "

" general
syntax on
set incsearch
set scrolloff=8
set termguicolors

" swap undo backup
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" spacing
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap

" splits
set splitbelow splitright

" adjusting splits
nnoremap <silent> <C-Right> :vertical resize +3<CR>
nnoremap <silent> <C-Left> :vertical resize -3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>

" toggle highlight search
map <silent> <leader>h :set hlsearch!<cr>
nnoremap <silent> <esc> :noh<return><esc>

" newline without insert
nmap <C-o> O<Esc>j
nmap <CR> o<Esc>k

" open empty splits
nnoremap <C-s> :vnew<CR>
nnoremap <C-i> :new<CR>

" set column
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=brown

" pyenv environments for neovim
let g:python_host_prog = '/home/diego/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/diego/.pyenv/versions/neovim3/bin/python3'

" plugins install
call plug#begin()

" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall', { 'branch': 'main'}
Plug 'hrsh7th/nvim-compe'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'fhill2/telescope-ultisnips.nvim', {'branch': 'main'}
Plug 'honza/vim-snippets'
Plug 'cwood/ultisnips-terraform-snippets'

" Terminal
Plug 'voldikss/vim-floaterm'

" file operations
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" look and feel
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" language stuff
Plug 'hashivim/vim-terraform'

" motion
Plug 'christoomey/vim-tmux-navigator'

" Undos
Plug 'mbbill/undotree'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ThePrimeagen/git-worktree.nvim'

" comments
Plug 'tpope/vim-commentary'

" telescope and requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" source modulized configs
source ~/.config/nvim/config/colors.vim
source ~/.config/nvim/config/nerdtree.vim
source ~/.config/nvim/config/tmux-nav.vim
source ~/.config/nvim/config/telescope.vim
source ~/.config/nvim/config/vim-airline.vim
source ~/.config/nvim/config/undotree.vim
source ~/.config/nvim/config/vim-commentary.vim
source ~/.config/nvim/config/lsp.vim
source ~/.config/nvim/config/autopair.vim
source ~/.config/nvim/config/snippets.vim
source ~/.config/nvim/config/vim-terraform.vim
source ~/.config/nvim/config/float-term.vim
source ~/.config/nvim/config/git.vim
