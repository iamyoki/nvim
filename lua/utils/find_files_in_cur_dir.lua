local M = {}
local is_inside_work_tree = {}
local builtin = require("telescope.builtin")
local utils = require("telescope.utils")

M.project_files = function(opts)
  local cwd = vim.fn.getcwd()
  if is_inside_work_tree[cwd] == nil then
    vim.fn.system("git rev-parse --is-inside-work-tree")
    is_inside_work_tree[cwd] = vim.v.shell_error == 0
  end

  if is_inside_work_tree[cwd] then
    opts.prompt_title = opts.prompt_title .. " (Git Files)"
    builtin.git_files(opts)
  else
    builtin.find_files(opts)
  end
end

M.find_files_in_cur_dir = function()
  local buffer_dir = utils.buffer_dir()
  M.project_files({ cwd = buffer_dir, prompt_title = "Files in " .. buffer_dir })
end

return M
