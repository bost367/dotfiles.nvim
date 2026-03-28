local query = vim.treesitter.query.parse("rust", [[ (line_comment) @doc_comment ]])

---@param ctx render.md.handler.Context
---@return render.md.Mark[]
local function parse_rust_doc(ctx)
  local marks = {} ---@type render.md.Mark[]
  for id, node in query:iter_captures(ctx.root, ctx.buf) do
    local capture = query.captures[id]
    local start_row = node:range()
    if capture == "doc_comment" then
      marks[#marks + 1] = {
        conceal = true,
        start_row = start_row,
        start_col = 0,
        opts = {
          end_row = start_row + 1,
          end_col = 0,
          hl_group = "DiffDelete",
          -- hl_eol = true,
          -- virt_text = { { " ", "warn" } },
        },
      }
    end
  end
  return marks
end

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
      gitcommit = {
        enabled = true,
        query = [[
          ((message) @injection.content
            (#set! injection.combined)
            (#set! injection.include-children)
            (#set! injection.language "markdown"))
        ]],
      },
    },
  },
}
