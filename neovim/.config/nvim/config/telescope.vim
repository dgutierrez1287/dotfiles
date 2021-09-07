lua require("dg.telescope")

nnoremap <leader>ts :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <Leader>tf :lua require'dg.telescope'.project_files()<CR>
nnoremap <leader>tb :lua require('dg.telescope').buffers()<CR>
nnoremap <Leader>tl :lua require('telescope.builtin').live_grep()<CR>

nnoremap <Leader>tb :lua require('dg.telescope').git_branches()<CR>

nnoremap <Leader>us :lua require'telescope'.extensions.ultisnips.ultisnips{}<CR>

