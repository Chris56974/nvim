local telescope = require("telescope")
local map = vim.api.nvim_set_keymap -- map(mode, prev, after, opts)

local default_options = { noremap = true }

-- Find files using Telescope command-line sugar.
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", default_options)
map("n", "<c-p>", "<cmd>Telescope find_files<cr>", default_options)
map("n", "<leader>fa", ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', default_options)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", default_options)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", default_options)
map("n", "<leader>fn", "<cmd>Telescope help_tags<cr>", default_options)

telescope.setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".terraform" },
  },
  mappings = {},
  color_devicons = true,
})

require("telescope").load_extension("fzf")
