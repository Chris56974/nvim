vim.g.mapleader = ' ' -- leader commands are in the which.lua

require 'autocmd'
require 'mappings'
require 'options'
require 'plugins'
require 'config'
require 'lsp'
require 'which'

-- setup impatient, fidget, Ultest, lsp-status, debug
-- future https://github.com/mfussenegger/nvim-jdtls

--[[

Inspiration taken from...

https://github.com/ecosse3/nvim/blob/master/lua/lsp/installer.lua
https://github.com/jonwalstedt/dotfiles/tree/master/config
https://github.com/lukas-reineke/dotfiles/tree/master/vim/lua
https://github.com/Allaman/nvim
https://github.com/ChristianChiarulli/nvim
https://git.sr.ht/~whynothugo/dotfiles/tree/main/item/home/.config/nvim/lua/lsp.lua

]]
--
