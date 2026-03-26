-- Leader key (space, like Helix)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- No line numbers
vim.opt.number = false
vim.opt.relativenumber = false

-- 2-space tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- System clipboard
vim.opt.clipboard = "unnamedplus"

-- No swap files (like Helix)
vim.opt.swapfile = false

-- Disable exrc (0.12 loads from parent dirs by default)
vim.opt.exrc = false

-- Sane defaults
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.cursorline = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 250
vim.opt.undofile = true

-- Disable default LSP keymaps from 0.12
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    pcall(vim.keymap.del, "n", "grn")
    pcall(vim.keymap.del, "n", "grr")
    pcall(vim.keymap.del, "n", "gra")
    pcall(vim.keymap.del, "n", "gri")
    pcall(vim.keymap.del, "n", "grt")
    pcall(vim.keymap.del, "n", "grx")
  end,
})

-- Enable treesitter highlighting (built into 0.12)
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

-- Keymaps
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Statusline with colored mode indicator (like Helix color-modes)
local function statusline()
  local mode_map = {
    ["n"]  = { "NOR", "StatusModeNormal" },
    ["i"]  = { "INS", "StatusModeInsert" },
    ["v"]  = { "VIS", "StatusModeVisual" },
    ["V"]  = { "V-L", "StatusModeVisual" },
    ["\22"] = { "V-B", "StatusModeVisual" },
    ["c"]  = { "CMD", "StatusModeNormal" },
    ["R"]  = { "REP", "StatusModeInsert" },
    ["t"]  = { "TER", "StatusModeNormal" },
  }
  local mode = vim.fn.mode()
  local info = mode_map[mode] or { "???", "StatusModeNormal" }
  local parts = {
    "%#" .. info[2] .. "# " .. info[1] .. " ",
    "%#StatusLine# %f %m%r",
    "%=",
    "%l,%c %P ",
  }
  return table.concat(parts)
end

_G.Statusline = statusline
vim.opt.statusline = "%!v:lua.Statusline()"

-- Colorscheme
vim.cmd.colorscheme("autumn-night")
