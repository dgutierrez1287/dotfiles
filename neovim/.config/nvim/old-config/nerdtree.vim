" open automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" toggle 
nnoremap <Leader>f :NERDTreeToggle<Enter>

" clean up buffers when delete file
let NERDTreeAutoDeleteBuffer = 1

" simplify the ui
let NERDTreeMinimalUI = 1

" closing nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" hidden files
let NERDTreeShowHidden = 1

let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1
