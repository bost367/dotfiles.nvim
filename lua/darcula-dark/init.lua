require("darcula-dark.lsp")
require("darcula-dark.nvim-treesitter")
require("lualine").setup({
  options = {
    theme = require("darcula-dark.lualine"),
  },
})

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
  "theme",
  "trouble",
  "vim-illuminate",
}

for _, plugin in pairs(plugins) do
  ---@type table<any, Highliht>
  local groups = require("darcula-dark." .. plugin).groups()
  for name, highlight in pairs(groups) do
    ---@diagnostic disable: param-type-mismatch
    vim.api.nvim_set_hl(0, name, highlight)
  end
end
