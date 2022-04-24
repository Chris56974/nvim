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
  use 'mfussenegger/nvim-dap'
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", })
  use({ "folke/trouble.nvim", cmd = { "TroubleToggle", "Trouble" } })

  -- IDE
  use "kyazdani42/nvim-tree.lua"
  use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "folke/which-key.nvim"
  use "akinsho/nvim-toggleterm.lua"
  use "ahmedkhalf/project.nvim"

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
  use "TimUntersberger/neogit"
  use "sindrets/diffview.nvim"
  use "lewis6991/gitsigns.nvim"
  use "f-person/git-blame.nvim"

end)

-- use 'lewis6991/impatient.nvim'
