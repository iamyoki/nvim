local builtin = require("telescope.builtin")
local utils = require("telescope.utils")
local action_state = require("telescope.actions.state")

local function find_files_in_dir(dir)
  local function attach_mappings(_, map)
    map("n", "../", function(_prompt_bufnr)
      local current_picker = action_state.get_current_picker(_prompt_bufnr)
      local current_cwd = current_picker.cwd
      local parent_dir = vim.fn.fnamemodify(current_cwd, ":h")

      find_files_in_dir(parent_dir)
    end)
    return true
  end

  builtin.find_files({ cwd = dir, prompt_title = "Files in " .. dir, attach_mappings = attach_mappings })
end

local function find_files_in_cur_dir()
  local buffer_dir = utils.buffer_dir()
  find_files_in_dir(buffer_dir)
end

return find_files_in_cur_dir
