return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      separator_style = { "|", "|" },
      indicator = { style = "none" },
      always_show_bufferline = true,
      max_name_length = 30,
      offsets = {
        {
          filetype = "neo-tree",
          text = "󰨞 Visual Studio Code",
          highlight = "Directory",
          separator = true,
          text_align = "left",
        },
      },
    },
  },
}
