require("which-key").register({

  [","] = { "<cmd>lua require('dap').toggle_breakpoint()<CR>", "Create" },
  b = { "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", "Breakpoint Condition" },
  c = { "<cmd>lua require('dap').continue()<CR>", "Continue" },
  j = { "<cmd>lua require('dap').step_over()<CR>", "Step Over" },
  i = { "<cmd>lua require('dap').step_into()<CR>", "Step Into" },
  I = { "<cmd>DIInstall<cr>", "Debug Installer" },
  k = { "<cmd>lua require('dap').step_out()<CR>", "Step Out" },

  f = { "local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>", "Float" },
  o = { "<cmd>lua require('dap').repl.open()<CR>", "Open" },
  l = { "<cmd>lua require('dap').repl.run_last()<CR>", "Run Last" },
  m = {
    "<cmd>lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>",
    "Log Point Message",
  },
  t = { "<cmd>lua require('dap').toggle()<CR>", "Toggle" },
  h = { "<cmd>lua require('dap.ui.variables').hover()<CR>", "Hover" },
  v = { "<cmd>lua require('dap.ui.variables').visual_hover()<CR>", "Visual Hover" },
  s = { "<cmd>lua require('dap').scopes()<CR>", "Scopes" },
  u = { ":lua require('dapui').toggle()<CR>", "dapUI" },
  w = { "<cmd>lua require('dap.ui.widgets').hover()<CR>", "Hover" },

}, { prefix = ",", mode = "n" })
