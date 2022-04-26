local map = vim.api.nvim_set_keymap -- map(mode, prev, after, opts)
local default_options = { noremap = true }

require("which-key").register({
  ["1"] = { ":1ToggleTerm<cr>", "1" },
  ["2"] = { ":2ToggleTerm<cr>", "2" },
  ["3"] = { ":3ToggleTerm<cr>", "3" },
  ["4"] = { ":4ToggleTerm<cr>", "4" },
  ["5"] = { ":5ToggleTerm<cr>", "5" },
  ["6"] = { ":6ToggleTerm<cr>", "6" },
  ["7"] = { ":7ToggleTerm<cr>", "7" },
  ["8"] = { ":8ToggleTerm<cr>", "8" },
  ["9"] = { ":9ToggleTerm<cr>", "9" },
  f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
  v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
}, { prefix = "t", mode = "n", noremap = true })
