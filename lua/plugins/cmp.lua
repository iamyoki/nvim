return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<A-Escape>"] = cmp.mapping(function()
        if cmp.visible() then
          cmp.close()
        else
          cmp.complete()
        end
      end, { "i", "n" }),
    })

    return opts
  end,
}
