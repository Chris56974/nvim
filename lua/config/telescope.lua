local telescope = require "telescope"
local actions = require "telescope.actions"

telescope.setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".terraform" },
  },
  mappings = {
    n = {
      ["<C-c>"] = actions.close,
    },
  },
  color_devicons = true,
})

telescope.load_extension("fzf")
telescope.load_extension("projects")
