local ok, telescope = pcall(require, "telescope")
if not ok then
  vim.notify("telescope.nvim is unavailable", vim.log.levels.WARN)
  return
end

local builtin = require("telescope.builtin")

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      "^%.git/",
      "^node_modules/",
      "^dist/",
      "^build/",
      "^coverage/",
      "^%.expo/",
      "^%.cache/",
      "^%.next/",
      "^%.turbo/",
      "^%.parcel%-cache/",
      "^ios/",
      "^android/",
      "%.swp$",
      "^%.DS_Store$",
    },
    path_display = { "smart" },
    layout_strategy = "horizontal",
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = "top",
    },
  },
  pickers = {
    find_files = {
      hidden = false,
    },
  },
})

local opts = { noremap = true, silent = true }

local project_files = function()
  local ok_git = pcall(builtin.git_files, opts)
  if not ok_git then
    builtin.find_files()
  end
end

vim.keymap.set("n", "<leader><leader>", project_files, opts)
vim.keymap.set("n", "<leader>ps", builtin.live_grep, opts)
vim.keymap.set("n", "<C-b>", builtin.buffers, opts)
vim.keymap.set("n", "<C-g>", builtin.git_files, opts)
