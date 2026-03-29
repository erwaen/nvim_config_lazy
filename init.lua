require("mappings")
require("config.lazy")

vim.opt.termguicolors = true
vim.cmd.colorscheme('rose-pine')

vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight Pmenu guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight CursorLineNr guibg=NONE ctermbg=NONE
]]

vim.opt.expandtab = true     -- Use spaces instead of tabs
vim.opt.tabstop = 4          -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4       -- Number of spaces used for each step of (auto)indent
vim.opt.softtabstop = 4      -- Number of spaces a <Tab> feels like while editing


vim.cmd("set number")
vim.cmd("set relativenumber")

vim.opt.wrap = false

vim.opt.signcolumn = "auto"
