return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ft = { "markdown" },
  ---@module "render-markdown"
  ---@type render.md.UserConfig
  opts = {
    file_types = { "markdown", "rust" },
    heading = {
      sign = false,
      position = "inline",
      border = false,
      icons = { "󰉫 ", "󰉬 ", "󰉭 ", "󰉮 ", "󰉯 ", "󰉰 " },
    },
    dash = {
      width = 90,
    },
    anti_conceal = {
      enabled = false,
    },
    code = {
      language = false,
      sign = false,
      width = "block",
      min_width = 90,
      border = "thin",
      left_pad = 1,
    },
    checkbox = {
      unchecked = { icon = " " },
      checked = { icon = " " },
      custom = {
        todo = { raw = "[-]", rendered = "󰛲 " },
      },
    },
    link = {
      email = "󰇰 ",
      hyperlink = " ",
    },
    bullet = {
      icons = { "•", "", "◆", "◇" },
    },
  },
}
