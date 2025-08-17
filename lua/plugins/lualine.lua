-- Status bar

local function readonly_mode()
  if vim.bo.readonly then
    return " "
  else
    return " "
  end
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      globalstatus = true,
      section_separators = "",
      component_separators = "",
      disabled_filetypes = {
        "trouble",
        "NvimTree",
      },
    },
    sections = {
      lualine_a = {
        { "mode", fmt = string.lower },
      },
      lualine_b = {
        { "branch", icon = "" },
      },
      lualine_c = {},
      lualine_x = {
        {
          "diagnostics",
          sections = { "error", "warn", "hint", "info" },
          symbols = { error = " ", warn = " ", hint = " ", info = " " },
        },
      },
      lualine_y = {
        "location",
        "fileformat",
        "encoding",
        "lsp_status",
        readonly_mode,
      },
      lualine_z = {},
    },
  },
}
