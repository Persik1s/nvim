vim.g.mapleader = " "



-- Пример биндинга для открытия Neotree с помощью Ctrl + n
vim.keymap.set('n', '<C-n>', ':Neotree float<CR>')
vim.keymap.set('n', '<C-m>', ':ToggleTerm<CR>')
vim.keymap.set('n', '<C-x>', ':d<CR>')
