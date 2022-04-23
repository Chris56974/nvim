-- Default options
require("nightfox").setup({
  options = {
    modules = { -- List of various plugins and additional options
      diagnostic = true,
      gitsigns = true,
      illuminate = true,
      lightspeed = true,
      native_lsp = true,
      neogit = true,
      nvimtree = true,
      symbol_outline = true,
      telescope = true,
      treesitter = true,
      tsrainbow = true,
      whichkey = true,
    },
  },
})

-- setup must be called before loading
vim.cmd("colorscheme nightfox")
