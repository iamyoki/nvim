return {
  "CRAG666/code_runner.nvim",
  lazy = true,
  config = true,
  keys = {
    { "<leader>r", "<cmd>RunCode<cr>", desc = "Run Code" },
    { "<leader>rc", "<cmd>RunClose<cr>", desc = "Close Code Runner" },
  },
  opts = {
    filetype = {
      sh = "zsh",
      bash = "bash",
      zsh = "zsh",
    },
    focus = false,
  },
}
