require("which-key").register({

  a = { "<cmd>Trouble<cr>", "Trouble" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Document Diagnostic" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
  l = { "<cmd>Trouble loclist<cr>", "Loclist" },
  L = { "<cmd>Trouble lsp_references<cr>", "Lsp References" },
  q = { "<cmd>Trouble quickfix<cr>", "Quickfix" },
  t = { "<cmd>TodoTrouble<cr>", "Todos" },
  x = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace diagnostics" }

}, { prefix = "t", mode = "n", noremap = true, silent = true })
