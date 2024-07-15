require("neorg").setup({
  load = {
    ["core.defaults"] = {},
    ["core.concealer"] = {},
    ["core.completion"] = {
      config = { engine = "nvim-cmp" },
    },
    ["core.dirman"] = {
      config = {
        workspaces = {
          my_ws = "~/zzz",
        },
        index = "index.norg",
      },
    },
    ["core.export"] = {},
    ["core.export.markdown"] = {},
    ["core.integrations.image"] = {},
    ["core.latex.renderer"] = {
      config = {
        scale = "2",
      },
    },
    ["core.integrations.nvim-cmp"] = {},
    ["core.ui.calendar"] = {},
    ["core.integrations.treesitter"] = {},
    ["core.neorgcmd"] = {},
  },
})

return {
  {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = true,
  },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },
}
