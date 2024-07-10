-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local del = vim.keymap.del

-- yank into sys clipboard
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank into sys clipboard" })
map({ "n", "v" }, "<leader>Y", '"+Y', { desc = "Yank line into sys clipboard" })

-- paste last yank
map({ "n", "v", "t" }, "0p", '"0p', { desc = "Paste last yank" })
map({ "n", "v", "t" }, "0P", '"0P', { desc = "Paste last yank above" })
map({ "n", "v", "t" }, "<leader>pp", '"0p', { desc = "Paste last yank" })
map({ "n", "v", "t" }, "<leader>pP", '"0P', { desc = "Paste last yank above" })

-- cut line and sync sys clipboard
map("n", "<C-x>", '"+cc', { desc = "Cut into sys clipboard" })
map("v", "<C-x>", '"+c', { desc = "Cut selection into sys clipboard" })

-- toggleterm
map({ "n", "v", "t" }, "<leader>t", "<cmd>exe v:count1 . 'ToggleTerm'<CR>", { desc = "Toggle terminal" })

-- delete ctrl+l so the terminal can clear screen as expected
del("t", "<C-l>")

-- keep center
map("n", "zk", require("utils.toggle_keep_center"), { desc = "Toggle keep center" })

-- find files in current directory relative to active buffer
map(
  { "n", "v", "t" },
  "<leader>fd",
  require("utils.find_files_in_cur_dir").find_files_in_cur_dir,
  { desc = "Find files in current directory" }
)
