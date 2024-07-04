return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>ss",
        function()
          require("telescope.builtin").lsp_document_symbols({
            show_line = true,
            symbol_width = 35,
            -- symbols = LazyVim.config.get_kind_filter(),
          })
        end,
        desc = "Goto Symbol",
      },
    },
  },
}
