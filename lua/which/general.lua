require("which-key").register({

  ["<Tab>"] = { "<cmd>e#<cr>", "Switch to previously opened buffer" },
  ["="] = { "<c-w>=", "Equally size" },
  ["_"] = { "<c-w>_", "Max size" },

  e = { "<cmd>NvimTreeToggle<cr>", "Toggle Tree" },
  h = { "<C-w>h<cr>", "Move left" },
  j = { "<C-w>j<cr>", "Move down" },
  k = { "<C-w>k<cr>", "Move up" },
  l = { "<C-w>l<cr>", "Move right" },
  q = { ":q<cr>", "quit" },

  Q = {
    name = "Misc",
    l = { "<cmd>source ~/.config/nvim/snippets/*<cr>", "Reload snippets" },
    p = { "<cmd>PackerSync<cr>", "PackerSync" },
    t = { "<cmd>FloatermNew --autoclose=2<cr>", "New Floaterm" },
    s = { "<cmd>SymbolsOutline<cr>", "Toggle SymbolsOutline" },
    z = { "<cmd>ZenMode<cr>", "Toggle ZenMode" },
  },

  w = { ":w!<cr>", "Write", silent = true, noremap = true },

}, { prefix = "<leader>", mode = "n" })
