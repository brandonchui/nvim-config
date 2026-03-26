-- Disable unwanted bundled plugins (must be before anything else)
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
vim.g.loaded_matchit = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_zip = 1

-- Disable 0.12 auto-features
vim.g.editorconfig = false

-- Load config
require("config.options")
require("config.lazy")
