return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  ---@type render.md.UserConfig
  opts = {
    completions = {
      blink = { enabled = true },
      -- lsp = { enabled = false },
    },
    heading = {
      sign = false,
      position = "inline",
      width = "full",
      border = false,
      icons = { "󰉫 ", "󰉬 ", "󰉭 ", "󰉮 ", "󰉯 ", "󰉰 " },
    },
    code = {
      sign = false,
      style = "normal",
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
      icons = { "", "", "◆", "◇" },
    },
  },
}
