local map = vim.api.nvim_set_keymap -- map(mode, prev, after, opts)
local default_options = { noremap = true, silent = true }

map("n", "<Space>", "<NOP>", default_options)
map("n", ";", "<NOP>", default_options)
map("n", "t", "<NOP>", default_options)
map("n", "<Alt>", "<NOP>", default_options)
vim.g.mapleader = " " -- leader commands are in the which.lua

-- center search results after / or ?
map("n", "n", "nzz", default_options)
map("n", "N", "Nzz", default_options)

-- stay in indent mode after indenting
map("v", "<", "<gv", default_options)
map("v", ">", ">gv", default_options)

-- tab to switch buffers
map("n", "<TAB>", ":bnext<CR>", default_options)
map("n", "<S-TAB>", ":bprevious<CR>", default_options)

-- Cancel search highlighting with ESC
map("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_options)

-- paste over currently selected text without yanking it
map("v", "p", "\"_dP", default_options)

-- write file with sudo
map("c", "w!!", "execute 'write !sudo tee % >/dev/null' <bar> edit!", default_options)

-- split navigation shortcuts
map("n", ",", "<C-w>", default_options)
map("", "<A-h>", "<C-w>h", default_options)
map("", "<A-j>", "<C-w>j", default_options)
map("", "<A-k>", "<C-w>k", default_options)
map("", "<A-l>", "<C-w>l", default_options)

-- Nvim-tree
map("", "<A-e>", ":NvimTreeToggle", default_options)

-- Terminal
map("", "<A-1>", ":1ToggleTerm<cr>", default_options)
map("", "<A-2>", ":2ToggleTerm<cr>", default_options)
map("", "<A-3>", ":3ToggleTerm<cr>", default_options)
map("", "<A-4>", ":4ToggleTerm<cr>", default_options)
map("", "<A-5>", ":5ToggleTerm<cr>", default_options)
map("", "<A-6>", ":6ToggleTerm<cr>", default_options)
map("", "<A-7>", ":7ToggleTerm<cr>", default_options)
map("", "<A-8>", ":8ToggleTerm<cr>", default_options)
map("", "<A-9>", ":9ToggleTerm<cr>", default_options)
map("", "<A-q>", "<cmd>q<cr>", default_options)
map("", "<A-f>", "<cmd>ToggleTerm direction=float<cr>", default_options)
map("", "<A-v>", "<cmd>ToggleTerm size=80 direction=vertical<cr>", default_options)

-- telescope
map("n", "<c-p>", "<cmd>Telescope find_files<cr>", default_options)
