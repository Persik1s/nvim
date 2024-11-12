-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	{
    	"nvim-neo-tree/neo-tree.nvim",
    		branch = "v3.x",
    		dependencies = {
      			"nvim-lua/plenary.nvim",
      			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      			"MunifTanjim/nui.nvim",
      			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    		}
	},
	{ 's1n7ax/nvim-window-picker' },
	{'nvim-tree/nvim-web-devicons'},
	{'nvim-treesitter/nvim-treesitter'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/nvim-cmp'},
	{ 'hrsh7th/cmp-nvim-lsp' },
	{'jackguo380/vim-lsp-cxx-highlight'},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {'Pocco81/auto-save.nvim'},
    {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
    },
    {
        -- amongst your other plugins
        {'akinsho/toggleterm.nvim', version = "*", config = true}
    },
    'terryma/vim-multiple-cursors',


    	{
        "xero/miasma.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme miasma")
        end,
	},
	"rktjmp/lush.nvim"

})
