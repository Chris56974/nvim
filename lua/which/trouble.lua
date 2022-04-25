require("which-key").register({

  t = {
    name = "Trouble",
    w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
    d = { "<cmd>Trouble document_diagnostics<cr>", "Document Diagnostic" },
    l = { "<cmd>Trouble loclist<cr>", "Loclist" },
    q = { "<cmd>Trouble quickfix<cr>", "Quickfix" },
    t = { "<cmd>TodoTrouble<cr>", "Todos" },
    r = { "<cmd>Trouble lsp_references<cr>", "LSP References" },
  },

}, { prefix = "<leader>", mode = "n" })
