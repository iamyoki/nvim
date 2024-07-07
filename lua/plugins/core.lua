return {
  -- add catppuccin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- add kanagawa
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
              bg_dim = "none",
            },
          },
        },
      },
    },
  },

  -- load color scheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin-frappe",
      colorscheme = "kanagawa",
    },
  },
}
