-- init.lua
local cmp = require'cmp'
local lspconfig = require'lspconfig'

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
  },
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
})

-- Подключение автодополнения к LSP
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.clangd.setup {
  capabilities = capabilities,
}

