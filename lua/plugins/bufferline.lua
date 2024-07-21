return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      separator_style = { "│", "│" },
      indicator = { style = "none" },
      always_show_bufferline = true,
      max_name_length = 30,
      offsets = {
        {
          filetype = "neo-tree",
          text = "󰨞 Visual Studio Code",
          -- highlight = "Directory",
          separator = false,
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
