" Set Leader 
let mapleader = ","

" Line Numbers
set number relativenumber

" Spacing
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap

" Folds
set foldmethod=indent
set foldlevelstart=4

" Splits
set splitbelow splitright

" adjusting splits
nnoremap <silent> <C-Right> :vertical resize +3<CR>
nnoremap <silent> <C-Left> :vertical resize -3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>

" newline without insert
nmap <C-o> O<Esc>j
nmap <CR> o<Esc>k

" open empty splits
nnoremap <C-s> :vnew<CR>
nnoremap <C-i> :new<CR>
" git remaps
nnoremap <C-p> :GFiles<CR>

" set column
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Plugins (configured in their own config file)
call plug#begin()

" pyenv environments for neovim
let g:python_host_prog = '/home/diego/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/diego/.pyenv/versions/neovim3/bin/python3'

" file operations
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'junegunn/fzf', { 'build': './install --all', 'merged': 0 }
Plug 'junegunn/fzf.vim', { 'depends': 'fzf' } 

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" look and feel
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Motion
Plug 'christoomey/vim-tmux-navigator'
Plug 'kshenoy/vim-signature'

" Tools
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'w0rp/ale'
Plug 'michaeljsmith/vim-indent-object'
Plug 'jiangmiao/auto-pairs'
Plug 'lambdalisue/vim-pyenv'

" Macros and Snippets
Plug 'chamindra/marvim'

""" Languages
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/deoplete.nvim'
Plug 'neomake/neomake'

" terraform
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'

" Python
Plug 'nvie/vim-flake8'
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}

" Go
Plug 'neoclide/coc-go', {'do': 'yarn install --frozen-lockfile'}

" bash
Plug 'neoclide/coc-sh', {'do': 'yarn install --frozen-lockfile'}

" file types
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-xml', {'do': 'yarn install --frozen-lockfile'}

" Snippets
Plug 'honza/vim-snippets'
Plug 'sebosp/vim-snippets-terraform'
Plug 'Sirver/ultisnips'

call plug#end()

" color scheme
colorscheme gruvbox
set background=dark

"import subconfig files
for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
	exe 'source' f
endfor
