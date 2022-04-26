require("which-key").register({
  ["1"] = { "<cmd>lua require('harpoon.term').gotoTerminal(1)<cr>", "Go to term 1" },
  ["2"] = { "<cmd>lua require('harpoon.term').gotoTerminal(2)<cr>", "Go to term 2" },
  ["3"] = { "<cmd>lua require('harpoon.term').gotoTerminal(3)<cr>", "Go to term 3" },
  ["4"] = { "<cmd>lua require('harpoon.term').gotoTerminal(4)<cr>", "Go to term 4" },
  ["5"] = { "<cmd>lua require('harpoon.term').gotoTerminal(5)<cr>", "Go to term 5" },

  t = {
    ["1"] = { "<cmd>lua require('harpoon.term').sendCommand(1, 1)<cr>", "Go to term 1" },
    ["2"] = { "<cmd>lua require('harpoon.term').sendCommand(2, 1)<cr>", "Go to term 2" },
    ["3"] = { "<cmd>lua require('harpoon.term').sendCommand(3, 1)<cr>", "Go to term 3" },
    ["4"] = { "<cmd>lua require('harpoon.term').sendCommand(4, 1)<cr>", "Go to term 4" },
    ["5"] = { "<cmd>lua require('harpoon.term').sendCommand(5, 1)<cr>", "Go to term 5" },
  }
}, { prefix = "t", mode = "n", noremap = true })
