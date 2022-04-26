require("which-key").register({

  g = {
    name = "Git",
    a = { "<cmd>git add .<cr>", "add all" },
    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    B = { "<cmd>Telescope git_bcommits<cr>", "Checkout commits (for the current file)" },
    c = { "<cmd>git commit<cr>", "commit" },
    C = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
    d = { "<cmd>DiffviewOpen<cr>", "Open DiffView", },
    D = { "<cmd>DiffviewClose<cr>", "Close DiffView" },
    j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
    k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
    n = { "<cmd>Neogit<cr>", "Open Neogit" },
    l = { "<cmd>GitBlameToggle<cr>", "Blame" },
    g = { "<cmd>git add . && git commit<cr>", "add and commit all" },
    p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
    R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
    r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
    S = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
    s = { "<cmd>Telescope git_status<cr>", "Open changed file" },
    u = { "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk", },
  },

  G = {
    name = "Gists",
    a = { "<cmd>Gist -b -a<cr>", "Create Anon" },
    d = { "<cmd>Gist -d<cr>", "Delete" },
    f = { "<cmd>Gist -f<cr>", "Fork" },
    g = { "<cmd>Gist -b<cr>", "Create" },
    l = { "<cmd>Gist -l<cr>", "List" },
    p = { "<cmd>Gist -b -p<cr>", "Create Private" },
  },

}, { prefix = "<leader>", mode = "n" })
