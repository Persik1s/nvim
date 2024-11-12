require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "cpp", "markdown", "markdown_inline", "cmake" },

 sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,

  }  
}
