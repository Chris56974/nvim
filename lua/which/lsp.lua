local wk = require("which-key")

wk.register({
  a = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Add Workspace Folder" },
  A = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", "List Workspace Folders" },

  c = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },

  d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition" },
  D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go To Declaration" },

  e = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "Show implementations" },
  E = { "<cmd>Telescope diagnostics bufnr=0<cr>", "Document Diagnostics" },

  f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },

  i = { "<cmd>LspInstallInfo<cr>", "LspInstallInfo" },
  I = { "<cmd>LspInfo<cr>", "LspInfo" },

  k = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover Commands" },
  K = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
  l = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Line diagnostics" },
  n = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next Diagnostic" },
  p = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
  q = { "<cmd>lua vim.diagnostic.set_loclist()<cr>", "Quickfix" },

  R = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
  r = { "<cmd>lua vim.lsp.buf.references()<cr>", "References" },

  s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
  S = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols" },

  t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },

  w = { "<cmd>Telescope diagnostics<cr>", "Workspace Diagnostics" },
  W = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", "Remove Workspace Folder" },

}, { prefix = "m", mode = "n" })
