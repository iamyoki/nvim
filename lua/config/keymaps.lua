-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local del = vim.keymap.del

-- yank into sys clipboard
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank into sys clipboard" })
map({ "n", "v" }, "<leader>Y", '"+Y', { desc = "Yank line into sys clipboard" })

-- p last yanked
map({ "n", "v" }, "p", function()
  local reg = vim.v.register
  if reg == '"' then
    print("Paste last yank")
    return '"0p'
  else
    print("Paste reg: " .. reg)
    return '"' .. reg .. "p"
  end
end, { expr = true, desc = "Paste last yank" })

-- cut line and sync sys clipboard
map("n", "<C-x>", '"+cc', { desc = "Cut into sys clipboard" })
map("v", "<C-x>", '"+c', { desc = "Cut selection into sys clipboard" })

-- toggleterm
map({ "n", "v", "t" }, "<leader>t", "<cmd>exe v:count1 . 'ToggleTerm'<CR>", { desc = "Toggle terminal" })

-- delete ctrl+l so the terminal can clear screen as expected
del("t", "<C-l>")

-- keep center
vim.g.default_scrolloff = vim.o.scrolloff
map("n", "zk", function()
  if vim.o.scrolloff ~= vim.g.default_scrolloff then
    vim.o.scrolloff = vim.g.default_scrolloff
    print("Keep center off")
  else
    vim.o.scrolloff = 999
    print("Keep center on")
  end
end, { desc = "Toggle keep center" })
