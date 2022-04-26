local map = vim.api.nvim_set_keymap -- map(mode, prev, after, opts)
local default_options = { noremap = true }

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

-- remap control backspace to delete word
map("i", "<C-h>", "<C-w>", default_options)

-- Find files using Telescope command-line sugar.
map("n", "<c-p>", "<cmd>Telescope find_files<cr>", default_options)
