require('which-key').register({
  ['<Tab>'] = { '<cmd>e#<cr>', 'Switch to previously opened buffer' },
  ['='] = { '<c-w>=', 'Equally size' },
  ['_'] = { '<c-w>_', 'Max size' },
  e = { '<cmd>NvimTreeToggle<cr>', 'Toggle Tree' },
  E = { '<cmd>NvimTreeRefresh<cr>', 'Refresh Tree' },
  h = { '<C-w>h<cr>', 'Move left' },
  j = { '<C-w>j<cr>', 'Move down' },
  k = { '<C-w>k<cr>', 'Move up' },
  l = { '<C-w>l<cr>', 'Move right' },
  q = { ':q<cr>', 'quit' },
  w = { ':w!<cr>', 'Write', silent = true, noremap = true },
  b = {
    name = 'Buffers',
    b = {
      "<cmd>lua require'telescope.builtin'.buffers({ sort_mru = true, ignore_current_buffer = true })<cr>",
      'Find buffer',
    },
    a = {
      '<cmd>BufferLineCloseLeft<cr><cmd>BufferLineCloseRight<cr>',
      'Close all but the current buffer',
    },
    d = { '<cmd>Bdelete!<CR>', 'Close Buffer' },
    D = { '<cmd>%bd<cr>', 'Remove all buffers' },
    f = { '<cmd>BufferLinePick<cr>', 'Pick buffer' },
    l = { '<cmd>BufferLineCloseLeft<cr>', 'Close all buffers to the left' },
    p = { '<cmd>BufferLineMovePrev<cr>', 'Move buffer prev' },
    n = { '<cmd>BufferLineMoveNext<cr>', 'Move buffer next' },
    -- didn't work
    r = {
      '<cmd>BufferLineCloseRight<cr>',
      'Close all BufferLines to the right',
    },
    x = {
      '<cmd>BufferLineSortByDirectory<cr>',
      'Sort BufferLines automatically by directory',
    },
    L = {
      '<cmd>BufferLineSortByExtension<cr>',
      'Sort BufferLines automatically by extension',
    },
  },
  Q = {
    name = 'Misc',
    l = { '<cmd>source ~/.config/nvim/snippets/*<cr>', 'Reload snippets' },
    p = { '<cmd>PackerSync<cr>', 'PackerSync' },
    t = { '<cmd>FloatermNew --autoclose=2<cr>', 'New Floaterm' },
    s = { '<cmd>SymbolsOutline<cr>', 'Toggle SymbolsOutline' },
  },
}, { prefix = '<leader>', mode = 'n' })
