-- Debuggers are here
-- https://microsoft.github.io/debug-adapter-protocol/implementors/adapters/

require('which-key').register({

  [','] = {
    "<cmd>lua require('dap').toggle_breakpoint()<CR>",
    'Create breakpoint',
  },
  b = {
    "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
    'Set Breakpoint Condition',
  },
  c = { "<cmd>lua require('dap').continue()<CR>", 'Continue' },
  j = { "<cmd>lua require('dap').step_over()<CR>", 'Step Over' },
  i = { "<cmd>lua require('dap').step_into()<CR>", 'Step Into' },
  I = { '<cmd>DIInstall<cr>', 'Debug Installer (broken atm)' },
  k = { "<cmd>lua require('dap').step_out()<CR>", 'Step Out' },

  f = {
    "local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>",
    'Float dap ui widgets',
  },
  o = { "<cmd>lua require('dap').repl.open()<CR>", 'Open repl' },
  l = { "<cmd>lua require('dap').repl.run_last()<CR>", 'Run Last repl' },
  m = {
    "<cmd>lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>",
    'Set breakpoint with log point message',
  },
  t = { "<cmd>lua require('dap').toggle()<CR>", 'Toggle dap' },
  h = {
    "<cmd>lua require('dap.ui.variables').hover()<CR>",
    'Hover dap ui variables',
  },
  v = {
    "<cmd>lua require('dap.ui.variables').visual_hover()<CR>",
    'Visual Hover dap ui',
  },
  s = { "<cmd>lua require('dap').scopes()<CR>", 'Dap Scopes' },
  u = { ":lua require('dapui').toggle()<CR>", 'Toggle dapUI' },
  w = {
    "<cmd>lua require('dap.ui.widgets').hover()<CR>",
    'Hover dap ui widgets',
  },
}, { prefix = ',', mode = 'n' })
