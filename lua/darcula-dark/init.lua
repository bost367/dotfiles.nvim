--- @type table<string>
local plugins = {
  "blink_cmp",
  "diffview",
  "fzf_lua",
  "gitsigns",
  "indent_blankline",
  "lazy",
  "mason",
  "nvim_cmp",
  "nvim_scrollbar",
  "nvim_tree",
  "nvim_treesitter",
  "trouble",
  "vim_illuminate",
  "render_markdown",
}

---@param filename string
local function colorize(filename)
  local groups = require("darcula-dark.highlights." .. filename).groups()
  for name, highlight in pairs(groups) do
    vim.api.nvim_set_hl(0, name, highlight)
  end
end

colorize("builtin")
colorize("semantic_tokens")

for _, plugin in pairs(plugins) do
  colorize("plugins." .. plugin)
end
