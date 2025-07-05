require("mappings")
require("config.lazy")

vim.opt.termguicolors = true
vim.cmd.colorscheme('tokyonight')

vim.opt.expandtab = true     -- Use spaces instead of tabs
vim.opt.tabstop = 4          -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4       -- Number of spaces used for each step of (auto)indent
vim.opt.softtabstop = 4      -- Number of spaces a <Tab> feels like while editing


vim.cmd("set number")
vim.cmd("set relativenumber")


