require("which-key").register({

  [";"] = { "<cmd>Telescope find_files<cr>", "Find files" },
  ["1"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "Open File 1" },
  ["2"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "Open File 2" },
  ["3"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "Open File 3" },
  ["4"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "Open File 4" },

  a = { "<cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>", "Find hidden files" },
  b = { "<cmd>Telescope buffers<cr>" },

  c = { "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>", "Colorscheme with Preview" },
  C = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },

  D = { "<cmd>Telescope commands<cr>", "Commands" },
  f = { "<cmd>Telescope live_grep<cr>", "Grep files" },

  h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
  H = { "<cmd>Telescope heading<cr>", "Find Header" },

  i = { "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", "Media" },

  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  K = { "<cmd>Telescope man_pages<cr>", "Man Pages" },

  l = { "<cmd>Telescope resume<cr>", "Last Search" },

  M = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Harpoon menu" },
  m = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "Add file" },

  r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
  R = { "<cmd>Telescope registers<cr>", "Registers" },

  s = { "<cmd>Telescope grep_string<cr>", "Text under cursor" },
  S = { "<cmd>Telescope symbols<cr>", "Search symbols" },

  t = { "<cmd>Telescope live_grep<cr>", "Text" },
  p = { "<cmd>Telescope projects<cr>", "Projects" },

  z = { "<cmd>Telescope zoxide list<CR>", "Zoxide" },

}, { prefix = ";", mode = "n", noremap = true })
