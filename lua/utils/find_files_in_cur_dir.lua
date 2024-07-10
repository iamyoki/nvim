local builtin = require("telescope.builtin")
local utils = require("telescope.utils")

local function find_files_in_cur_dir()
  local buffer_dir = utils.buffer_dir()
  builtin.find_files({ cwd = buffer_dir, prompt_title = "Files in " .. buffer_dir })
end

return find_files_in_cur_dir
