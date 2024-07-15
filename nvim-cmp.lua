local cmp = require("cmp")
return {
  "hrsh7th/nvim-cmp",
  cmp.setup({
    sources = cmp.config.sources({
      { name = "neorg" },
    }),
  }),
}
