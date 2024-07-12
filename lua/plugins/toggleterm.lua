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
      size = 30,
      open_mapping = [[<C-`>]],
      autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
    },
  },
}
