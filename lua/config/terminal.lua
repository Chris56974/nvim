require('toggleterm').setup {
  open_mapping = [[<c-\>]],
  direction = 'float',
}

function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  -- t is for terminal mode
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-l>', [[<C-\><C-n><C-W>l]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-q>', [[<cmd>q<cr>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-f>', [[<cmd>q<cr>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-1>', [[<cmd>1ToggleTerm<cr>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-2>', [[<cmd>2ToggleTerm<cr>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-3>', [[<cmd>3ToggleTerm<cr>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-4>', [[<cmd>4ToggleTerm<cr>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-5>', [[<cmd>5ToggleTerm<cr>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-6>', [[<cmd>6ToggleTerm<cr>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-7>', [[<cmd>7ToggleTerm<cr>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-8>', [[<cmd>8ToggleTerm<cr>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-9>', [[<cmd>9ToggleTerm<cr>]], opts)
end

vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'
