require("darcula-dark.highlights.lsp")
require("darcula-dark.highlights.plugins.nvim-treesitter")
require("lualine").setup({
  options = {
    theme = require("darcula-dark.highlights.plugins.specials.lualine"),
  },
})

--- @type table<string>
local plugins = {
  "plugins.blink-cmp",
  "plugins.diffview",
  "plugins.fzf-lua",
  "plugins.gitsigns",
  "plugins.indent-blankline",
  "plugins.lazy",
  "plugins.mason",
  "plugins.nvim-cmp",
  "plugins.nvim-scrollbar",
  "plugins.nvim-tree",
  "theme",
  "plugins.trouble",
  "plugins.vim-illuminate",
}

for _, plugin in pairs(plugins) do
  ---@type table<any, Highliht>
  local groups = require("darcula-dark.highlights." .. plugin).groups()
  for name, highlight in pairs(groups) do
    ---@diagnostic disable: param-type-mismatch
    vim.api.nvim_set_hl(0, name, highlight)
  end
end
