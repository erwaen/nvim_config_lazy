vim.g.mapleader = " " -- leader as <Space>
-- copy to my system clipboard
vim.keymap.set('v', '<Leader>y', '"+y')

-- move code blocks with J or K in visual moide
-- explanation of the third argument
-- :m move, '>+1 move to +1 from the last line ('>) of the selected part
-- then <CR> simulates the 'enter' key
-- gv is to select the previuos selection
-- '=' is to reindent 
-- gv again to select again the code block selected before
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") 
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")


-- show warnings and errors
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)

-- file explorer
vim.keymap.set('n', '<leader>pv', ':Ex<CR>')
-- vim.keymap.set('n', '<leader>pv', ':Oil<CR>')

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
