return {
  -- add catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
  },

  -- add kanagawa
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = true,
    opts = {
      -- transparent = true,
      colors = {
        theme = {
          all = {
            ui = {
              whitespace = "#2A2A40",
              bg_gutter = "none",
              bg_dim = "none",
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          TabLineSel = { bg = theme.ui.special },
        }
      end,
    },
  },

  -- github-nvim-theme
  { "projekt0n/github-nvim-theme", lazy = true },

  -- onedark
  { "navarasu/onedark.nvim", lazy = true },

  -- nightfox
  { "EdenEast/nightfox.nvim", lazy = true },

  -- load color scheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
      colorscheme = "kanagawa",
      -- colorscheme = "github_dark",
      -- colorscheme = "onedark",
      -- colorscheme = "nordfox",
    },
  },
}
