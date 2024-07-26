return {
  "hrsh7th/nvim-cmp",
  version = false,
  event = "InsertEnter",
  opts = function(_, opts)
    local cmp = require("cmp")
    local types = require("cmp.types")

    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<A-Escape>"] = cmp.mapping(function()
        if cmp.visible() then
          cmp.close()
        else
          cmp.complete()
        end
      end, { "i", "s", "n" }),
      -- ["<Tab>"] = cmp.mapping(function()
      --   cmp.select_next_item({ behavior = types.cmp.SelectBehavior.Select })
      -- end, { "i", "s", "n" }),
      -- ["<S-Tab>"] = cmp.mapping(function()
      --   cmp.select_prev_item({ behavior = types.cmp.SelectBehavior.Select })
      -- end, { "i", "s", "n" }),
    })

    return opts
  end,
}
