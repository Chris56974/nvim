--[[

If you lazy load a package with packer, make sure you pass in a callback
for the config and not a require statement.

``` lua
function get_config(name)
	return string.format('require("config/%s")', name)
end

use({ "lazy_loaded_plugin", config = require("plugin") }) -- ERROR
use({ "ibid", config = get_config("plugin") })
use "ibid" -- if you don't have any config this is fine too
```

--]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- Dependencies
  use "kyazdani42/nvim-web-devicons"
  use "nvim-lua/plenary.nvim"

  -- LSP
  use "williamboman/nvim-lsp-installer"
  use "onsails/lspkind-nvim"
  use "neovim/nvim-lspconfig"
  use "ray-x/lsp_signature.nvim"
  use "jose-elias-alvarez/null-ls.nvim"

  -- Code
  use "ray-x/go.nvim"
  use 'ggandor/lightspeed.nvim'
  use "ur4ltz/surround.nvim"
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use "ThePrimeagen/harpoon"
  use "echasnovski/mini.nvim"
  use "famiu/bufdelete.nvim"
  use "norcalli/nvim-colorizer.lua"
  use "LudoPinelli/comment-box.nvim"
  use "nvim-treesitter/nvim-treesitter-textobjects"
  use 'simrat39/rust-tools.nvim'
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", })
  use({ "folke/trouble.nvim", cmd = { "TroubleToggle", "Trouble" } })

  -- Debugging
  use 'mfussenegger/nvim-dap'
  use "Pocco81/dap-buddy.nvim"
  use "rcarriga/nvim-dap-ui"
  use "theHamsta/nvim-dap-virtual-text"
  use "rcarriga/vim-ultest"

  -- IDE
  use "kyazdani42/nvim-tree.lua"
  use "EdenEast/nightfox.nvim"
  use 'folke/tokyonight.nvim'
  use 'akinsho/toggleterm.nvim'
  use "lunarvim/colorschemes"
  use "folke/which-key.nvim"
  use "ahmedkhalf/project.nvim"
  use 'lewis6991/impatient.nvim'
  use "Mofiqul/vscode.nvim"

  -- Navigation
  use "nvim-telescope/telescope.nvim"
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

  -- CMP
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "f3fora/cmp-spell"
  use "hrsh7th/cmp-calc"
  use "lukas-reineke/cmp-rg"
  use "saadparwaiz1/cmp_luasnip"

  -- Git
  use 'ruifm/gitlinker.nvim'
  use "TimUntersberger/neogit"
  use "sindrets/diffview.nvim"
  use "lewis6991/gitsigns.nvim"
  use "f-person/git-blame.nvim"

end)
