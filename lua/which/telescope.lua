require("which-key").register({
  a = { "<cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>", "Find hidden files" },
  b = { "<cmd>Telescope buffers<cr>" },
  c = { "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>", "Colorscheme with Preview" },
  C = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },

  D = { "<cmd>Telescope commands<cr>", "Commands" },

  f = { "<cmd>Telescope find_files<cr>", "Find files" },
  F = { "<cmd>Telescope live_grep<cr>", "Grep files" },
  h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
  H = { "<cmd>Telescope heading<cr>", "Find Header" },

  j = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "Open File 1" },
  k = { "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", "Open File 2" },
  l = { "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", "Open File 3" },
  [";"] = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", "Open File 4" },

  K = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  U = { "<cmd>Telescope man_pages<cr>", "Man Pages" },

  L = { "<cmd>Telescope resume<cr>", "Last Search" },
  M = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Harpoon menu" },
  m = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "Add file" },
  p = { "<cmd>Telescope projects<cr>", "Projects" },

  r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
  R = { "<cmd>Telescope registers<cr>", "Registers" },

  S = { "<cmd>Telescope symbols<cr>", "Search symbols" },
  s = { "<cmd>Telescope grep_string<cr>", "Text under cursor" },

  t = { "<cmd>Telescope live_grep<cr>", "Text" },
  z = { "<cmd>Telescope zoxide list<CR>", "Zoxide" },

}, { prefix = ";", mode = "n", noremap = true })
