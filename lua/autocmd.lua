--
-- :help event - see what events you can listen to
-- :au - see all current autocmd's and what they're doing
--

local autocmd = vim.api.nvim_create_autocmd
local autogrp = vim.api.nvim_create_augroup

-- vim.api.nvim_create_autocmd("BufEnter", { command = "echo 'Hello'", group = group })
autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

-- vim.cmd([[ augroup LspFormatting
--                 autocmd! * <buffer>
--                 autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
--             augroup END
--             ]])
