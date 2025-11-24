--- @type table<string>
local plugins = {
  "blink_cmp",
  "dap",
  "dap_ui",
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
  "vim_illuminate",
}

---@param filename string
local function colorize(filename)
  local groups = require("island-dark.highlights." .. filename).groups()
  for name, highlight in pairs(groups) do
    vim.api.nvim_set_hl(0, name, highlight)
  end
end

colorize("builtin")
colorize("semantic_tokens")

for _, plugin in pairs(plugins) do
  colorize("plugins." .. plugin)
end
