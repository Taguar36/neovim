return {
  "lukas-reineke/headlines.nvim",
  dependencies = "nvim-treesitter/nvim-treesitter",
  enabled = false,
  config = function()
    -- -- Define custom highlight groups using Vimscript
    vim.cmd([[highlight Headline1 guifg=#f38ba8]])
    vim.cmd([[highlight Headline2 guifg=#fab387]])
    vim.cmd([[highlight Headline3 guifg=#a6e3a1]])
    vim.cmd([[highlight Headline4 guifg=#89b4fa]])
    vim.cmd([[highlight Headline5 guifg=#cba6f7]])
    vim.cmd([[highlight Headline6 guifg=#f5e0dc]])

    -- Defines the codeblock background color to something darker
    vim.cmd([[highlight CodeBlock guibg=#09090d]])
    -- When you add a line of dashes with --- this specifies the color, I'm not
    -- adding a "guibg" but you can do so if you want to add a background color
    vim.cmd([[highlight Dash guibg=#D19A66 gui=bold]])

    -- Setup headlines.nvim with the newly defined highlight groups
    require("headlines").setup({
      markdown = {
        -- If set to false, headlines will be a single line and there will be no
        -- "fat_headline_upper_string" and no "fat_headline_lower_string"
        fat_headlines = true,
        --
        -- Lines added above and below the header line makes it look thicker
        -- "lower half block" unicode symbol hex:2584
        -- "upper half block" unicode symbol hex:2580
        fat_headline_upper_string = "▃",
        fat_headline_lower_string = "🬂",
        --
        -- You could add a full block if you really like it thick ;)
        -- fat_headline_upper_string = "█",
        -- fat_headline_lower_string = "█",
        --
        -- Other set of lower and upper symbols to try
        -- fat_headline_upper_string = "▃",
        -- fat_headline_lower_string = "-",
        --
        headline_highlights = {
          "Headline1",
          "Headline2",
          "Headline3",
          "Headline4",
          "Headline5",
          "Headline6",
        },

        bullets = { "󰎤", "󰎧", "󰎪", "󰎭", "󰎱", "󰎳" },
        -- bullets = { "󰎤", "󰎧", "󰎪", "󰎮", "󰎰", "󰎵" },
        -- bullets = { "◉", "○", "✸", "✿" },
      },
      norg = {
        headline_highlights = {
          "Headline1",
          "Headline2",
          "Headline3",
          "Headline4",
          "Headline5",
          "Headline6",
        },
        bullet_highlights = {
          "@neorg.headings.1.prefix",
          "@neorg.headings.2.prefix",
          "@neorg.headings.3.prefix",
          "@neorg.headings.4.prefix",
          "@neorg.headings.5.prefix",
          "@neorg.headings.6.prefix",
        },
        bullets = { "◉", "○", "✸", "✿" },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        dash_string = "-",
        doubledash_highlight = "DoubleDash",
        doubledash_string = "=",
        quote_highlight = "Quote",
        quote_string = "┃",
        fat_headlines = true,
        fat_headline_upper_string = "▃",
        fat_headline_lower_string = "🬂",
      },
    })
  end,
}
