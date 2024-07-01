return {
  -- add catppuccin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- load color schema
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
}
