local o = vim.opt
local g = vim.g

o.autowrite = true -- write before running an external cmd
o.clipboard = 'unnamedplus' -- save to system clipboard
o.fileencoding = 'utf-8' -- used to be set encoding=utf-8
o.number = true -- line numbers on the left
o.relativenumber = true -- that are also relative
o.splitbelow = true -- new windows are created below
o.splitright = true -- and to the right
o.errorbells = false -- remove annoying sound
o.title = true -- show title for window
o.scrolloff = 10 -- start scrolling when 10 lines away from top/bottom
o.expandtab = true -- convert tabs into spaces
o.tabstop = 2 -- each tab is 2 spaces
o.smartindent = true -- use proper indentation when moving to new line
o.shiftwidth = 2 -- number of spaces for each auto indent
o.termguicolors = true
o.timeoutlen = 500 -- timer until which-key shows up
o.hlsearch = false -- remove search highlight
o.ignorecase = true -- ignore casing in patterns
o.smartcase = true -- case insensitive search until first capital
o.laststatus = 3 -- get a global status bar for all your splits
o.signcolumn = 'yes'
g.gitblame_enabled = 0 -- default off

-- g.tokyonight_style = "night"
vim.cmd 'colorscheme nightfox'

-- Enable folding with treesitter
-- o.foldmethod = "expr"
-- o.foldexpr = "nvim_treesitter#foldexpr()"
