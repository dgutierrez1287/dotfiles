
local function on_attach()

end

-- typescript
require'lspconfig'.tsserver.setup{ on_attach=on_attach }

-- golang language
require'lspconfig'.gopls.setup{
    on_attach = on_attach,
    cmd = {"gopls", "serve"},
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}

-- bash language
require'lspconfig'.bashls.setup{
    on_attach = on_attach,
}

-- python language
require'lspconfig'.pyright.setup{
    on_attach = on_attach,
}

-- vim language
require'lspconfig'.vimls.setup {
    on_attach = on_attach,
}


