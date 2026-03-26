return {
  -- Fuzzy finder
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find files" },
      { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live grep" },
      { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
      { "<leader>fh", "<cmd>FzfLua helptags<cr>", desc = "Help tags" },
    },
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = { char = "│", highlight = "IblIndent" },
      scope = { enabled = false },
    },
  },

  -- Which-key (shows keybind popup on leader press)
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      win = {
        col = math.huge,
        row = math.huge,
        width = { min = 30, max = 40 },
      },
    },
  },
}
