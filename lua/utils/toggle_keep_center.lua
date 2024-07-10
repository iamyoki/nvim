vim.g.default_scrolloff = vim.o.scrolloff

local function toggle_keep_center()
  if vim.o.scrolloff ~= vim.g.default_scrolloff then
    vim.o.scrolloff = vim.g.default_scrolloff
    print("Keep center off")
  else
    vim.o.scrolloff = 999
    print("Keep center on")
  end
end

return toggle_keep_center
