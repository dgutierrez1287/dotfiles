" ################### nvim-tree.vim ##################

" lua config for nvim-tree
lua <<EOF
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', 's', api.node.open.vertical,        opts('Open: Vertical Split'))
  vim.keymap.set('n', 'i', api.node.open.horizontal,      opts('Open: Horizontal Split'))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  ---
  on_attach = my_on_attach,
  ---

  renderer = {
     root_folder_label = false,
  },
}
EOF


" toggle
nnoremap <Leader>nt :NvimTreeToggle<CR>