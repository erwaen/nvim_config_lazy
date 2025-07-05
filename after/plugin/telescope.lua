local telescope = require('telescope.builtin')

-- Mapping for telescope
vim.keymap.set('n', '<C-p>', telescope.find_files, { noremap = true, silent = true })  -- Buscar archivos
vim.keymap.set('n', '<Leader>ps', telescope.live_grep, { noremap = true, silent = true })  -- Buscar texto en archivos
vim.keymap.set('n', '<C-b>', telescope.buffers, { noremap = true, silent = true })  -- Buscar buffers abiertos
vim.keymap.set('n', '<C-g>', telescope.git_files, { noremap = true, silent = true })  -- Buscar archivos en Git

