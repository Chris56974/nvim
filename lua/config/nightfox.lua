-- Default options
require("nightfox").setup({
  options = {
    modules = { -- List of various plugins and additional options
      diagnostic = true,
      cmp = true,
      gitsigns = true,
      native_lsp = true,
      neogit = true,
      nvimtree = true,
      telescope = true,
      treesitter = true,
      whichkey = true,
    },
  },
})

-- setup must be called before loading
vim.cmd("colorscheme nightfox")
