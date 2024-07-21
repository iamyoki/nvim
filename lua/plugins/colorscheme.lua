return {
  -- add catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavor = "macchiato",
      transparent_background = true,
    },
  },

  -- add kanagawa
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
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

  -- github-nvim-theme
  { "projekt0n/github-nvim-theme" },

  -- onedark
  { "navarasu/onedark.nvim" },

  -- nightfox
  {
    "EdenEast/nightfox.nvim",
    opts = {
      options = {
        transparent = true,
      },
    },
  },

  -- load color scheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin-frappe",
      -- colorscheme = "kanagawa",
      -- colorscheme = "github_dark",
      -- colorscheme = "onedark",
      colorscheme = "nordfox",
    },
  },
}
