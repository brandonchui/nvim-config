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
    opts = {
      -- Lua/in-process previewer: no external `bat` spawn per item (Windows-friendly)
      winopts = {
        preview = { default = "builtin" },
      },
      -- Use fd for file listing: faster than rg --files and gitignore-aware
      files = {
        cmd = "fd --color=never --type f --hidden --follow --exclude .git",
      },
      -- One rg.exe spawn per search; cap results so huge trees don't flood the pipe
      grep = {
        rg_opts = table.concat({
          "--color=never --no-heading --with-filename --line-number --column",
          "--smart-case --max-columns=4096 --hidden --glob=!.git/",
        }, " "),
      },
    },
  },

  -- In-process picker (no fzf terminal / conpty — closest to Helix's feel)
  {
    "echasnovski/mini.pick",
    keys = {
      { "<leader>pf", function() require("mini.pick").builtin.files() end, desc = "Pick files (mini)" },
      { "<leader>pg", function() require("mini.pick").builtin.grep_live() end, desc = "Live grep (mini)" },
      { "<leader>pb", function() require("mini.pick").builtin.buffers() end, desc = "Buffers (mini)" },
      { "<leader>ph", function() require("mini.pick").builtin.help() end, desc = "Help tags (mini)" },
    },
    opts = {},
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
