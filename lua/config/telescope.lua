local telescope = require("telescope")

-- mappings are in /which dir
telescope.setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".terraform" },
  },
  mappings = {},
  color_devicons = true,
})

telescope.load_extension("fzf")
