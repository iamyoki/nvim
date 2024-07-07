return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = true,
    cmd = { "ToggleTerm" },
    keys = {
      { "<C-`>" },
    },
    opts = {
      open_mapping = [[<C-`>]],
    },
  },
}
