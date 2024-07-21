return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      separator_style = "slant",
      -- indicator = { style = "none" },
      always_show_bufferline = true,
      max_name_length = 30,
      offsets = {
        {
          enabled = false,
          filetype = "neo-tree",
          text = "󰨞 Visual Studio Code",
          -- highlight = "Directory",
          separator = true,
          text_align = "left",
        },
      },
    },
    highlights = {
      buffer_selected = {
        fg = "lavender",
        bold = true,
      },
    },
  },
}
