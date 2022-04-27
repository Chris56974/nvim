--
-- :help event - see what events you can listen to
-- :au - see all current autocmd's and what they're doing
--

local autocmd = vim.api.nvim_create_autocmd
local autogrp = vim.api.nvim_create_augroup

-- vim.api.nvim_create_autocmd("BufEnter", { command = "echo 'Hello'", group = group })
autocmd('BufEnter', { command = 'set formatoptions-=cro' })

local lsp_formatting = autogrp('LspFormatting', { clear = true })
autocmd(
  'BufWritePre',
  { command = 'lua vim.lsp.buf.formatting_sync()', group = lsp_formatting }
)
