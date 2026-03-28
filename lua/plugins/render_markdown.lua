---@type render.md.partial.UserConfig
local injected_makdown = {
  render_modes = { "n", "v", "V", "i", "c", "t" }, -- `h mode()`
  heading = {
    icons = { " ", " ", " ", " ", " ", " " },
    backgrounds = { "RenderMarkdownHeaderDocComment" },
  },
  dash = { highlight = "RenderMarkdownDocComment" },
  checkbox = {
    unchecked = { highlight = "RenderMarkdownDocComment" },
    checked = { highlight = "RenderMarkdownDocComment" },
    custom = { todo = { highlight = "RenderMarkdownDocComment" } },
  },
  bullet = { highlight = "RenderMarkdownDocComment" },
  quote = { highlight = "RenderMarkdownDocComment" },
  pipe_table = { head = "RenderMarkdownHeaderDocComment", row = "RenderMarkdownDocComment" },
  code = {
    left_margin = 1,
  },
}

return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ft = { "markdown", "rust" },
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
    overrides = {
      filetype = {
        rust = injected_makdown,
      },
    },
    injections = {
      rust = {
        enabled = true,
        query = [[
          ((line_comment (doc_comment) @injection.content)+
            (#set! injection.language "markdown")
            (#set! injection.combined))
        ]],
      },
    },
  },
}
