local util = require("util")
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, util.addDesc(opts,"Go to definition"))
end)

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')

cmp.setup({
    mapping = {
        -- `Tab` key to confirm completion
        ['<Tab>'] = cmp.mapping.confirm({select = false}),
    },
    --
    -- Make the first item in completion menu always be selected.
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
