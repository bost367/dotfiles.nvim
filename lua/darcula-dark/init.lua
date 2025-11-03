--- @type table<string>
local plugins = {
  "blink-cmp",
  "diffview",
  "fzf-lua",
  "gitsigns",
  "indent-blankline",
  "lazy",
  "mason",
  "nvim-cmp",
  "nvim-scrollbar",
  "nvim-tree",
  "nvim-treesitter",
  "trouble",
  "vim-illuminate",
}

---@param filename string
local function colorize(filename)
  local groups = require("darcula-dark.highlights." .. filename).groups()
  for name, highlight in pairs(groups) do
    vim.api.nvim_set_hl(0, name, highlight)
  end
end

colorize("builtin")
colorize("semantic-tokens")

for _, plugin in pairs(plugins) do
  colorize("plugins." .. plugin)
end
