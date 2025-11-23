return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  ---@type render.md.UserConfig
  opts = {
    file_types = {
      "markdown",
      "blink-cmp-documentation",
    },
    restart_highlighter = true,
    completions = {
      blink = { enabled = true },
      -- lsp = { enabled = true },
    },
    heading = {
      sign = false,
      position = "inline",
      width = "block",
      border = false,
      icons = { "󰉫 ", "󰉬 ", "󰉭 ", "󰉮 ", "󰉯 ", "󰉰 " },
    },
    code = {
      language = false,
      sign = false,
      -- border = "thin",
      -- border = "none",
      -- above = "─",
      -- below = "─",
      -- style = "normal",
      -- left_pad = 1,
      -- left_margin = 1,
    },
    checkbox = {
      unchecked = { icon = " " },
      checked = { icon = " " },
    },
    link = {
      footnote = {
        enabled = false,
      },
      image = "󰥶 ",
      email = "󰀓 ",
      hyperlink = "󰌹 ",
      wiki = {
        icon = "󱗖 ",
        body = function()
          return nil
        end,
        scope_highlight = nil,
      },
    },
    bullet = {
      left_pad = 2,
      icons = { "", "", "◆", "◇" },
    },
    yaml = {
      enabled = false,
    },
  },
}
