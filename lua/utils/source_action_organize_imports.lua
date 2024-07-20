return function()
  vim.lsp.buf.code_action({
    apply = true,
    context = {
      diagnostics = {},
      only = { "source.organizeImports" },
    },
  })
end
