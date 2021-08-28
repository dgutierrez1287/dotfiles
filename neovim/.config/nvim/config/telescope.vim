lua require("custom.telescope")

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files({hidden = true})<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <Leader>pg :lua require('telescope.builtin').git_files()<CR>


