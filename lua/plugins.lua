-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file

function get_config(name)
	return string.format('require("config/%s")', name)
end

-- Comment.nvim
return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
		config = get_config("telescope"),
	})

	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = get_config("nvim-tree"),
	})

	use({
		"hrsh7th/nvim-cmp",
		requires = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "f3fora/cmp-spell", { "hrsh7th/cmp-calc" }, { "lukas-reineke/cmp-rg" } },
		},
		config = get_config("cmp"),
	})

	use({
		"norcalli/nvim-colorizer.lua",
		event = "BufReadPre",
		config = get_config("colorizer"),
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		config = get_config("treesitter"),
		run = ":TSUpdate",
	})

	use("nvim-treesitter/nvim-treesitter-textobjects")

	use({ "rafamadriz/friendly-snippets" })

	use({
		"L3MON4D3/LuaSnip",
		requires = "saadparwaiz1/cmp_luasnip",
		config = get_config("luasnip"),
	})

	use({
		"sindrets/diffview.nvim",
		cmd = {
			"DiffviewOpen",
			"DiffviewClose",
			"DiffviewToggleFiles",
			"DiffviewFocusFiles",
		},
		config = get_config("diffview"),
	})

	use({
		"TimUntersberger/neogit",
		requires = { "nvim-lua/plenary.nvim" },
		cmd = "Neogit",
		config = get_config("neogit"),
	})

	use({ "rhysd/conflict-marker.vim" })

	use({ "f-person/git-blame.nvim", config = get_config("git-blame") })

	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		event = "BufReadPre",
		config = get_config("gitsigns"),
	})

	use({ "neovim/nvim-lspconfig", config = get_config("lsp") })

	use({
		"ray-x/lsp_signature.nvim",
		require = { "neovim/nvim-lspconfig" },
		config = get_config("lsp/lsp-signature"),
	})

	use("famiu/bufdelete.nvim")

	use({ "onsails/lspkind-nvim", requires = { "famiu/bufdelete.nvim" } })

	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
		config = get_config("lsp/null-ls"),
	})

	use({
		"akinsho/nvim-toggleterm.lua",
		keys = { "<C-n>", "<leader>fl", "<leader>gt" },
		config = get_config("toggleterm"),
	})

	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		cmd = { "TroubleToggle", "Trouble" },
		config = get_config("trouble"),
	})

	use({ "ahmedkhalf/project.nvim", config = get_config("project") })

	use({ "folke/which-key.nvim", config = get_config("which") })

	use({
		"ptzz/lf.vim",
		requires = "voldikss/vim-floaterm",
		config = get_config("lf"),
	})

	use({ "EdenEast/nightfox.nvim", config = get_config("nightfox") })

	use({
		"ThePrimeagen/harpoon",
		requires = { "nvim-lua/plenary.nvim" },
		config = get_config("harpoon"),
	})

	use({ "ggandor/lightspeed.nvim", event = "BufReadPre" })

	use({ "ray-x/go.nvim", config = get_config("go") })

	use({ "LudoPinelli/comment-box.nvim", config = get_config("comment-box") })

	use({ "echasnovski/mini.nvim", branch = "stable", config = get_config("mini") })
end)
