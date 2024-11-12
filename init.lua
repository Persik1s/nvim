require('core.lazy')
require('core.plugins.neotree')


require('core.plugins.sysntx_lang')
require('core.plugins.lsp')
require('core.plugins.nvim-cmp')
-- Key
require('core.mappings.mappings')


vim.cmd.colorscheme "miasma"
vim.opt.termguicolors = true




-- Set tab size to 4 spaces (you can change this value)
vim.opt.tabstop = 4        -- Number of spaces a tab counts for
vim.opt.softtabstop = 4    -- Number of spaces for a tab when editing
vim.opt.shiftwidth = 4      -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true    -- Convert tabs to spaces
vim.opt.number = true

require('toggleterm').setup({})




