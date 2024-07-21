return {
  "lukas-reineke/indent-blankline.nvim",
  event = "LazyFile",
  main = "ibl",
  opts = function()
    return {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { show_start = true, show_end = true },
    }
  end,
}
