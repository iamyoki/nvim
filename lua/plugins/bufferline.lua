return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      -- separator_style = { "│", "│" },
      -- always_show_bufferline = true,
      -- max_name_length = 30,
      indicator = { style = "underline" },
      offsets = {
        {
          filetype = "neo-tree",
          text = "󰨞 Visual Studio Code",
          highlight = "NeoTreeRootName",
          separator = true,
          text_align = "left",
        },
      },
    },
    highlights = {
      fill = {
        bg = "NONE",
      },
      separator = {
        fg = {
          highlight = "Normal",
          attribute = "bg",
        },
      },
    },
  },
}
